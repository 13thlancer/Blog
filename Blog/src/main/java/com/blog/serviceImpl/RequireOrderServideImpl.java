package com.blog.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blog.entity.RequireOrder;
import com.blog.service.RequireOrderServiceI;

@Service("RequireOrderServide")
public class RequireOrderServideImpl implements RequireOrderServiceI{

	@Override
	public List<RequireOrder> showMyOrder(String openid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int AddOrder(RequireOrder requireorder) {
		// TODO Auto-generated method stub
		return 0;
	}

}
