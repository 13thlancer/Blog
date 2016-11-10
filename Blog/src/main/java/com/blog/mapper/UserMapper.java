package com.blog.mapper;

import java.util.List;

import com.blog.entity.User;

public interface UserMapper {
	
	int addUser(User user);
	
	List<User> checkUser(String YZJId);

}
