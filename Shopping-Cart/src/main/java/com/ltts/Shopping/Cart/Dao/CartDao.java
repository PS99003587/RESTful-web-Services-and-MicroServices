package com.ltts.Shopping.Cart.Dao;

import com.ltts.Shopping.Cart.model.Cart;

public interface CartDao {

	Cart findBy(Long idCart);
	Long save(Cart cart);
	void update(Cart cart);
	
}
