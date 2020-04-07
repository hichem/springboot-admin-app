package com.example.appmonitor;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;
import de.codecentric.boot.admin.server.config.EnableAdminServer;

@Configuration
@EnableAdminServer
@SpringBootApplication
public class AppmonitorApplication {

	public static void main(String[] args) {
		SpringApplication.run(AppmonitorApplication.class, args);
	}

}
