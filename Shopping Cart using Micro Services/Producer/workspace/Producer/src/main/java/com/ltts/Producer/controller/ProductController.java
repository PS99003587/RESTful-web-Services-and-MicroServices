package com.ltts.Producer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@ComponentScan(basePackages = {"com.ltts","org.springframework.jms"})

public class ProductController {
	protected Logger logger = Logger.getLogger(ProductController.class.getName());

	@Autowired
	private ProductService productService;

	@Autowired
	private Queue queue;

	@Autowired
	private JmsTemplate jmsTemplate;

	@RequestMapping(value=”/products”)
	public List<ProductEntity> allProducts() {
	logger.info(“producer-microservice allProducts() invoked”);
	List<ProductEntity> products = productService.getAllProductEntities();
	logger.info(“producer-microservice allProducts() found: ” + products.size());
	return products;

	}

	private void pushMessageIntoQueueByActiveMQ(Queue queue, ProductEntity productEntity ) {
	//Adding JMS Part, pushing message into Queue
	// Post message to the message queue named “OrderTransactionQueue”

	// Creating Object of ObjectMapper define in Jakson Api
	ObjectMapper Obj = new ObjectMapper();
	// get Oraganisation object as a json string
	try {
	String jsonStr = Obj.writeValueAsString(productEntity);

	// Displaying JSON String
	System.out.println(jsonStr);

	jmsTemplate.convertAndSend(queue, jsonStr);
	System.out.println(“### Message Successfully Pushed into Queue ###”);

	} catch (JsonProcessingException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	}

	 
}
