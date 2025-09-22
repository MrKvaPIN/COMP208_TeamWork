package com.iurac.recruit.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("pdf_resume")
public class PdfResume {
    private String id;       // 简历ID
    private String userId;   // 关联的用户ID
    private String filePath; // 存储路径
    private String text;     // 提取的文本
}