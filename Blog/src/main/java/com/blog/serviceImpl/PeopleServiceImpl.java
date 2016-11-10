package com.blog.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.entity.People;
import com.blog.mapper.PeopleMapper;
import com.blog.service.PeopleServiceI;

@Service("PeopleService")
public class PeopleServiceImpl implements PeopleServiceI {
	
	@Autowired
	private PeopleMapper peopleMapper;

	@Override
	public List<People> showPeople() {
		// TODO Auto-generated method stub
		return peopleMapper.showPeople();
	}

	@Override
	public List<People> showDetail(String id) {
		// TODO Auto-generated method stub
		return peopleMapper.showDetail(id);
	}

}
