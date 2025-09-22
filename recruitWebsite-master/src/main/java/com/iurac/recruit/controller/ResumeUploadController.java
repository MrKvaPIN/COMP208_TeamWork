package com.iurac.recruit.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.iurac.recruit.entity.Job;
import com.iurac.recruit.entity.PdfResume;
import com.iurac.recruit.service.PdfResumeService;
import com.iurac.recruit.util.PdfTextExtractor;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import com.iurac.recruit.entity.User;
import com.iurac.recruit.entity.ApplyResume;
import com.iurac.recruit.service.ApplyResumeService;
import com.iurac.recruit.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/resume")
public class ResumeUploadController {

    @Autowired
    private PdfResumeService resumeService;

    @Autowired
    private RestTemplate restTemplate;  // 用于调用 AI 端
    private final String AI_PROCESSING_URL = "http://127.0.0.1:5001/process1"; // AI 端 API

    /**
     * 上传简历并解析
     */
    @PostMapping("/upload")
    public Map<String, Object> uploadResume(@RequestParam("file") MultipartFile file) {
        Map<String, Object> response = new HashMap<>();
        try {
            // ✅ 1. 获取当前登录用户
            User currentUser = (User) SecurityUtils.getSubject().getPrincipal();
            if (currentUser == null) {
                response.put("status", "error");
                response.put("message", "用户未登录，请先登录");
                return response;
            }

            // ✅ 2. 生成唯一文件名，避免覆盖
            String uploadBaseDir = System.getProperty("user.home") + File.separator + "uploads";
            String uploadDir = uploadBaseDir + File.separator + currentUser.getId() + File.separator;
            File directory = new File(uploadDir);
            if (!directory.exists()) {
                directory.mkdirs();
            }

            String fileName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
            String filePath = uploadDir + fileName;
            file.transferTo(new File(filePath));

            // ✅ 3. 提取 PDF 文本
            PdfTextExtractor extractor = new PdfTextExtractor();
            String text = extractor.extractText(filePath);

            // ✅ 3.5 发送 text 到 AI 端进行简化处理
            String simplifiedText = processTextWithAI(text);
            if (simplifiedText == null) {
                response.put("status", "error");
                response.put("message", "AI 处理失败，请重试！");
                return response;
            }
            System.out.println(simplifiedText);

            // ✅ 4. 检查用户是否已经有简历
            PdfResume existingResume = resumeService.getLatestResumeByUserId(currentUser.getId());
            if (existingResume != null) {
                // ✅ 更新简历
                existingResume.setFilePath(filePath);
                existingResume.setText(simplifiedText);  // 存入 AI 处理后的文本
                resumeService.updateById(existingResume);
            } else {
                // ✅ 存储新的简历
                PdfResume resume = new PdfResume();
                resume.setUserId(currentUser.getId());
                resume.setFilePath(filePath);
                resume.setText(simplifiedText);  // 存入 AI 处理后的文本
                resumeService.saveResume(resume);
            }

            response.put("status", "success");
            response.put("message", "上传成功！");
            response.put("resume_text", simplifiedText);  // 返回 AI 处理后的文本
        } catch (Exception e) {
            response.put("status", "error");
            response.put("message", "上传失败：" + e.getMessage());
        }
        return response;
    }

    /**
     * 调用 AI 处理简历文本
     */
    private String processTextWithAI(String text) {
        try {
            // 发送数据到 AI 端
            Map<String, String> requestBody = new HashMap<>();
            requestBody.put("question", "Please output the highly simplified resume. Must not use any single quotation mark! Do not output anything else.");
            requestBody.put("resume", text);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            HttpEntity<Map<String, String>> requestEntity = new HttpEntity<>(requestBody, headers);

            ResponseEntity<String> response = restTemplate.postForEntity(AI_PROCESSING_URL, requestEntity, String.class);

            if (response.getStatusCode() == HttpStatus.OK) {
                return response.getBody();
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 获取已解析的简历信息
     */
    @GetMapping("/getParsedResume")
    public Map<String, Object> getParsedResume() {
        Map<String, Object> response = new HashMap<>();
        try {
            // 🔥 直接从 SecurityUtils 获取当前用户
            User currentUser = (User) SecurityUtils.getSubject().getPrincipal();
            if (currentUser == null) {
                response.put("status", "error");
                response.put("message", "用户未登录，请先登录");
                return response;
            }

            // ✅ 查询最新简历
            PdfResume resume = resumeService.getLatestResumeByUserId(currentUser.getId());
            if (resume == null) {
                response.put("status", "error");
                response.put("message", "未找到解析简历");
            } else {
                response.put("status", "success");
                response.put("resume_text", resume.getText());
            }
        } catch (Exception e) {
            response.put("status", "error");
            response.put("message", "数据库查询失败");
        }
        return response;
    }

    @Autowired
    private ApplyResumeService applyResumeService;

    @Autowired
    private JobService jobService;

    @GetMapping("/getParsedResumeAndSave")
    @ResponseBody
    public Map<String, Object> getParsedResumeAndSave(@RequestParam("jobId") String jobId) {
        Map<String, Object> response = new HashMap<>();
        try {
            // ✅ 获取当前用户
            User currentUser = (User) SecurityUtils.getSubject().getPrincipal();
            if (currentUser == null) {
                response.put("status", "error");
                response.put("message", "用户未登录");
                return response;
            }

            // ✅ 获取简历
            PdfResume resume = resumeService.getLatestResumeByUserId(currentUser.getId());
            if (resume == null) {
                response.put("status", "error");
                response.put("message", "未找到解析简历");
                return response;
            }

            // ✅ 获取岗位信息
            Job job = jobService.getById(jobId);
            if (job == null) {
                response.put("status", "error");
                response.put("message", "未找到对应岗位信息");
                return response;
            }

            // ✅ 查找是否已申请过该岗位
            QueryWrapper<ApplyResume> wrapper = new QueryWrapper<>();
            wrapper.eq("apply_user_id", currentUser.getId()).eq("apply_job_id", jobId);
            ApplyResume existing = applyResumeService.getOne(wrapper);

            if (existing != null) {
                response.put("status", "duplicate");
                response.put("message", "You have applied for the position");
                return response;
            }

            // ✅ 存入 apply 表
            ApplyResume applyResume = new ApplyResume();
            applyResume.setApplyUserId(currentUser.getId());
            applyResume.setApplyUsername(currentUser.getUsername());  // 🟢 设置用户名
            applyResume.setApplyResume(resume.getText());
            applyResume.setApplyJobId(jobId);
            applyResume.setApplyDescription(job.getDescription());

            applyResumeService.save(applyResume);

            response.put("status", "success");
            response.put("resume_text", resume.getText());
        } catch (Exception e) {
            response.put("status", "error");
            response.put("message", "数据库操作失败：" + e.getMessage());
        }
        return response;
    }

}
