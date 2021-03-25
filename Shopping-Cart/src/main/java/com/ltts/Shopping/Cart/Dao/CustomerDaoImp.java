package com.ltts.Shopping.Cart.Dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ltts.Shopping.Cart.model.Customer;

@Repository
public class CustomerDaoImp implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Customer findBy(String username) {
		String queryString = "FROM Customer WHERE username = :username";
		return (Customer) sessionFactory.getCurrentSession()
								.createQuery(queryString)
								.setParameter("username", username)
								.uniqueResult();
	}

	@Override
	public Long save(Customer customer) {
		return (Long) sessionFactory.getCurrentSession().save(customer);		
	}

}
