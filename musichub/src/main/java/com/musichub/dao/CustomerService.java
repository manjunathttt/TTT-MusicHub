package com.musichub.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musichub.model.Customer;

@Service
@Transactional
public class CustomerService
{
	@Autowired
    private ProductDAOImpl pci;
	
	public void addCus(Customer c) 
	{  
		  pci.addCus(c);  
	} 
	
}