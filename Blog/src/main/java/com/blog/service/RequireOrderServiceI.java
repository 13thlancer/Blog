package com.blog.service;

import java.util.List;

import com.blog.entity.RequireOrder;

public interface RequireOrderServiceI {

	List<RequireOrder> showMyOrder(String openid);
	
	int AddOrder(RequireOrder requireorder);
}
