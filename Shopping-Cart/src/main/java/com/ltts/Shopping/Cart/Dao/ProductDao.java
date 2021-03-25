package com.ltts.Shopping.Cart.Dao;

import java.util.List;

import com.ltts.Shopping.Cart.model.Product;

public interface ProductDao {

	Product findBy(Long idProduct);
	Product findBy(String description);
	List<Product> findByCategory(String category);
	List<Product> findAll();
	
}
