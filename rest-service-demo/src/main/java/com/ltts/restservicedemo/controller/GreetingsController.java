package com.ltts.restservicedemo.controller;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ltts.restservicedemo.Greeting;

@RestController
public class GreetingsController {
	private static final String template = "Hello, %s!";
	private final AtomicLong counter = new AtomicLong();
//The AtomicLong class provides you with a long variable which can be read and 
//written atomically, and which also contains advanced atomic operations like compareAndSet()
	
	@GetMapping("/greeting")
//The @GetMapping annotation ensures that HTTP GET requests to /greeting are mapped 
//to the greeting() method.
	public Greeting greeting (@RequestParam(value = "name", defaultValue ="World") String name) {
//@RequestParam binds the value of the query string parameter name into the name parameter of the
//greeting() method. If the name parameter is absent in the request, the defaultValue
//of World is used.
		return new Greeting (counter.incrementAndGet(),String.format(template, name));
	}
}
