package com.iurac.recruit.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.iurac.recruit.entity.ApplyResume;
import com.iurac.recruit.entity.Job;
import com.iurac.recruit.entity.User;
import com.iurac.recruit.service.ApplyResumeService;
import com.iurac.recruit.service.JobService;
import com.iurac.recruit.vo.PageResultVo;
import com.iurac.recruit.util.TableResult;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 申请人控制器
 */
@Controller
@RequestMapping("/applicant")
public class ApplicantController {

    @Autowired
    private ApplyResumeService applyResumeService;
    
    @Autowired
    private JobService jobService;

    /**
     * 跳转到申请人列表页面
     * @param id 岗位ID
     * @param model 模型
     * @return 申请人列表页面
     */
    @RequiresRoles(value = {"hr", "manager"})
    @GetMapping("/list/{id}")
    public String toApplicantListPage(@PathVariable("id") String id, Model model) {
        // 获取当前用户
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        model.addAttribute("userInfo", user);
        
        // 获取岗位信息
        Job job = jobService.getById(id);
        if (job != null) {
            model.addAttribute("jobId", id);
            model.addAttribute("jobName", job.getJob());
            model.addAttribute("jobDescription", job.getDescription());  // ✅ 增加这一行
        }
        
        return "service/applicant/list";
    }

    /**
     * 获取指定岗位的申请人列表
     * @param id 岗位ID
     * @param page 页码
     * @param limit 每页数量
     * @param username 申请人用户名（可选，用于搜索）
     * @return 申请人列表数据
     */
    @RequiresRoles(value = {"hr", "manager"})
    @GetMapping("/getByJobId/{id}")
    @ResponseBody
    public TableResult<ApplyResume> getByJobId(
            @PathVariable("id") String id,
            @RequestParam("page") Long page,
            @RequestParam("limit") Long limit,
            @RequestParam(value = "username", required = false) String username) {
        
        // 构建查询条件
        QueryWrapper<ApplyResume> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("apply_job_id", id);
        if (username != null && !username.isEmpty()) {
            queryWrapper.like("apply_username", username);
        }
        
        // 分页查询
        long total = applyResumeService.count(queryWrapper);
        queryWrapper.last("LIMIT " + (page - 1) * limit + "," + limit);
        List<ApplyResume> records = applyResumeService.list(queryWrapper);
        
        // 构建返回结果
        TableResult<ApplyResume> result = new TableResult<>();
        result.setCode(0);
        result.setMsg("");
        result.setCount(total);
        result.setData(records);
        
        return result;
    }
}