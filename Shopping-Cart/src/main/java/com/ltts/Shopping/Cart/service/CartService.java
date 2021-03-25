package com.ltts.Shopping.Cart.service;

import com.ltts.Shopping.Cart.model.Cart;

public interface CartService {

	Long save(Cart cart);
	void add(Long idCart, Long idProduct, Integer quantity);
	Long ordered(Long idCart);

}
