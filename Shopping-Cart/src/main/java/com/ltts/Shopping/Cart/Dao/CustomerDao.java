package com.ltts.Shopping.Cart.Dao;

import com.ltts.Shopping.Cart.model.Customer;

public interface CustomerDao {

	Customer findBy(String username);
	Long save(Customer customer);
	
}
