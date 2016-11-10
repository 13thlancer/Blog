package com.blog.service;

import java.util.List;
import com.blog.entity.People;

public interface PeopleServiceI {

	List<People> showPeople();
	
	List<People> showDetail(String id);

	
}
