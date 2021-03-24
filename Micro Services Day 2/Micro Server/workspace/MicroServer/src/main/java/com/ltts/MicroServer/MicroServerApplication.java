package com.ltts.MicroServer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class MicroServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(MicroServerApplication.class, args);
	}

}
