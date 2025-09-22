package com.iurac.recruit;

import com.iurac.recruit.security.RedisCacheManager;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.iurac.recruit.mapper")
public class RecruitWebsiteApplication implements CommandLineRunner {

    @Autowired
    private RedisCacheManager redisCacheManager;

    public static void main(String[] args) {
        SpringApplication.run(RecruitWebsiteApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        // 清空认证和权限缓存
        redisCacheManager.getCache("authenticationCacheName").clear();
        redisCacheManager.getCache("authorizationCacheName").clear();
        System.out.println("✅ Redis 缓存重启，项目成功运行！！！");
    }
}
