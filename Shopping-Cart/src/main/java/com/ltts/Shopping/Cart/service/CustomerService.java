package com.ltts.Shopping.Cart.service;

import java.security.NoSuchAlgorithmException;

import com.ltts.Shopping.Cart.exception.AuthenticationFailedException;
import com.ltts.Shopping.Cart.model.Customer;

public interface CustomerService {

	Customer authentication(String username, String password) 
			throws NoSuchAlgorithmException, AuthenticationFailedException;
	Long addCustomer(Customer customer) throws NoSuchAlgorithmException;
}
