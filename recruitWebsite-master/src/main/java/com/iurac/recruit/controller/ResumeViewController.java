package com.iurac.recruit.controller;

import com.iurac.recruit.entity.PdfResume;
import com.iurac.recruit.entity.User;
import com.iurac.recruit.service.PdfResumeService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/resume")
public class ResumeViewController {

    @Autowired
    private PdfResumeService resumeService;

    /**
     * 查看用户上传的PDF文件
     * @return 文件路径信息
     */
    @GetMapping("/view")
    public Map<String, Object> viewPdfResume() {
        Map<String, Object> response = new HashMap<>();
        try {
            // 获取当前登录用户
            User currentUser = (User) SecurityUtils.getSubject().getPrincipal();
            if (currentUser == null) {
                response.put("status", "error");
                response.put("message", "用户未登录，请先登录");
                return response;
            }

            // 获取用户最新上传的简历
            PdfResume resume = resumeService.getLatestResumeByUserId(currentUser.getId());
            if (resume == null || resume.getFilePath() == null) {
                response.put("status", "error");
                response.put("message", "未找到上传的PDF文件");
                return response;
            }

            // 返回文件路径
            response.put("status", "success");
            response.put("filePath", "/resume/viewPdf?userId=" + currentUser.getId()); // 使用查看PDF的链接
            response.put("fileName", resume.getFilePath().substring(resume.getFilePath().lastIndexOf(File.separator) + 1));
        } catch (Exception e) {
            response.put("status", "error");
            response.put("message", "获取文件失败：" + e.getMessage());
        }
        return response;
    }
    
    /**
     * 直接查看PDF文件
     * @param userId 用户ID
     * @return PDF文件
     */
    @GetMapping("/viewPdf")
    public ResponseEntity<Resource> viewPdf(@RequestParam("userId") String userId) {
        try {
            PdfResume resume = resumeService.getLatestResumeByUserId(userId);
            if (resume == null || resume.getFilePath() == null) {
                return ResponseEntity.notFound().build();
            }

            File file = new File(resume.getFilePath());
            if (!file.exists()) {
                return ResponseEntity.notFound().build();
            }

            Resource resource = new FileSystemResource(file);
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_PDF);

            headers.setContentDispositionFormData("inline", file.getName());
            headers.setCacheControl("must-revalidate, post-check=0, pre-check=0");

            return ResponseEntity.ok()
                    .headers(headers)
                    .contentLength(file.length())
                    .body(resource);
        } catch (Exception e) {
            return ResponseEntity.badRequest().build();
        }
    }
}