package com.haiyu.manager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * tk.mybatis
 * 配置 @MapperScan 注解，扫描对应 Mapper 接口所在的包路径
 */
@SpringBootApplication
@MapperScan(basePackages = "com.haiyu.manager.dao")
public class ManagerApplication {

	public static void main(String[] args) {
		SpringApplication.run(ManagerApplication.class, args);
	}
}
