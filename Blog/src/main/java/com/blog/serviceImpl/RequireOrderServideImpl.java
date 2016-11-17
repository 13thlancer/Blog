package com.blog.serviceImpl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.entity.RequireOrder;
import com.blog.mapper.RequireOrderMapper;
import com.blog.service.RequireOrderServiceI;

@Service("RequireOrderServide")
public class RequireOrderServideImpl implements RequireOrderServiceI{

	@Autowired
	private RequireOrderMapper requireOrderMapper;
	
	@Override
	public List<RequireOrder> showMyOrder(String openid) {
		return requireOrderMapper.selectByUser(openid);
	}

	@Override
	public int AddOrder(RequireOrder requireorder) {
		String id = UUID.randomUUID().toString();
		Date date = new Date();
		requireorder.setId(id);
		requireorder.setCreateTime(date);
		requireorder.setRequirestatus("…Í«Î÷–");
		return requireOrderMapper.insert(requireorder);
	}

	@Override
	public void UpdateOrder(RequireOrder requireorder) {
		Date date = new Date();
		requireorder.setUpdateTime(date);
		requireOrderMapper.updateById(requireorder);
	}

	@Override
	public List<RequireOrder> showPushMyOrder(String openid) {
		return requireOrderMapper.selectByStatus(openid);
	}

	@Override
	public List<RequireOrder> showOrder() {
		return requireOrderMapper.selectAll();
	}

}
