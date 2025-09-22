package com.iurac.recruit.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.iurac.recruit.entity.PdfResume;
import com.iurac.recruit.mapper.PdfResumeMapper;
import com.iurac.recruit.service.PdfResumeService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PdfResumeServiceImpl extends ServiceImpl<PdfResumeMapper, PdfResume> implements PdfResumeService {

    @Override
    public void saveResume(PdfResume resume) {
        this.save(resume); // 调用 MyBatis 保存
    }

    // **🔥 获取最新的简历**
    @Override
    public PdfResume getLatestResumeByUserId(String userId) {
        return this.lambdaQuery()
                .eq(PdfResume::getUserId, userId)
                .orderByDesc(PdfResume::getId)
                .last("LIMIT 1")  // 只取最新的一条
                .one();
    }

}