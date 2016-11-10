package com.blog.mapper;

import java.util.List;

import com.blog.entity.People;

public interface PeopleMapper {
	
	int addPeople(People people);
	List<People> showPeople();
	List<People> showDetail(String id);

}
