package com.ltts.Shopping.Cart.service;

import java.util.List;

import com.ltts.Shopping.Cart.exception.ProductNotFoundException;
import com.ltts.Shopping.Cart.model.Product;

public interface ProductService {

	Product findBy(Long idProduct) throws ProductNotFoundException;
	Product findBy(String description) throws ProductNotFoundException;
	List<Product> findByCategory(String category) throws ProductNotFoundException;
	List<Product> findAll() throws ProductNotFoundException;
	
}
