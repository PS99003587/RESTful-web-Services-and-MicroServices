package com.ltts.Consumer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.client.RestTemplate;

import com.ltts.Consumer.dao.ConsumerDao;

@SpringBootApplication
@EnableEurekaClient
//@ComponentScan(basePackageClasses=ConsumerController.class)
@ComponentScan( basePackages = { “com.consumer.service”, “org.springframework.jms”, “org.springframework.jms.core”} )
public class ConsumerApplication {

public static final String ACCOUNTS_SERVICE_URL = “http://product-microservice&#8221";
	
public static void main(String[] args) {
SpringApplication.run(ConsumerApplication.class, args);
}

@Bean
@LoadBalanced
public RestTemplate restTemplate() {
return new RestTemplate();
}

@Bean
public ConsumerDao consumerDao(){
return new ConsumerDaoImpl(ACCOUNTS_SERVICE_URL);

}
}