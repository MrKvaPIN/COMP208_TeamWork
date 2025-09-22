package com.iurac.recruit.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.iurac.recruit.entity.ApplyResume;
import com.iurac.recruit.mapper.ApplyResumeMapper;
import com.iurac.recruit.service.ApplyResumeService;
import org.springframework.stereotype.Service;

@Service
public class ApplyResumeServiceImpl extends ServiceImpl<ApplyResumeMapper, ApplyResume> implements ApplyResumeService {
}