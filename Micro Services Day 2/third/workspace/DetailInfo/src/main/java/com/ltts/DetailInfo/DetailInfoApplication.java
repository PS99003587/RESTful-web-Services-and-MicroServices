package com.ltts.DetailInfo;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.reactive.function.client.WebClient;

@EnableEurekaClient
@SpringBootApplication
public class DetailInfoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DetailInfoApplication.class, args);
	}

	@Bean
	@LoadBalanced
	//load balancing mechanism and service discovery
	public RestTemplate getRestTemplate() {
		return new RestTemplate();
	}

}