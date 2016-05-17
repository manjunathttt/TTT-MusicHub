package com.musichub.service;

import com.musichub.model.UserOrder;

public interface OrderService 
{
	void addOrder(UserOrder order);

    double getOrderGrandTotal(int cartId);
}
