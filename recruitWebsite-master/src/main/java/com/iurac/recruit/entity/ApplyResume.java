package com.iurac.recruit.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("t_apply_resume")
public class ApplyResume {
    private String id;
    private String applyUserId;
    private String applyResume;
    private String applyUsername;
    private String applyJobId;
    private String applyDescription;
}