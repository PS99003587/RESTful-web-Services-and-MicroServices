package com.ltts.Consumer.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

	@Repository
	public class ConsumerDao{

	@Autowired
	protected RestTemplate restTemplate;

	protected String serviceUrl;

	public ConsumerDao(String serviceUrl) {
	this.serviceUrl = serviceUrl.startsWith(“http”) ? serviceUrl: “http://&#8221; + serviceUrl;
	}

	public ConsumerDao() {
	super();
	// TODO Auto-generated constructor stub
	}

	/*
	* products are coming from another microservice as product-service
	*/
	public List<ProductEntity> getAllProducts() {
	ProductEntity[] productEntityListArr = restTemplate.getForObject(serviceUrl+”/products”,ProductEntity[].class);
	List<ProductEntity> productEntityList = Arrays.asList(productEntityListArr);
	System.out.println(“productEntityList.size() = “+productEntityList.size());
	return productEntityList;

	}
}
