package com.blog.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.entity.Lawyer;
import com.blog.mapper.LawyerMapper;
import com.blog.service.LawyerServiceI;

@Service("LawyerService")
public class LawyerServiceImpl implements LawyerServiceI {

	@Autowired
	private LawyerMapper lawyerMapper;
	
	@Override
	public List<Lawyer> showLawyer(String mtype) {
		return lawyerMapper.showLawyer(mtype);
	}

}
