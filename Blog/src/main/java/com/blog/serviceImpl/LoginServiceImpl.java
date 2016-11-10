package com.blog.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.entity.People;
import com.blog.entity.User;
import com.blog.mapper.PeopleMapper;
import com.blog.mapper.UserMapper;
import com.blog.service.LoginServiceI;

@Service("LoginService")
public class LoginServiceImpl implements LoginServiceI {

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private PeopleMapper peopleMapper;
	
	@Override
	public void BindUser(User user, People people) {
		String YZJId=user.getYZJID();
		List<User> list = userMapper.checkUser(YZJId);
		if(list.size() == 0){
			userMapper.addUser(user);
			peopleMapper.addPeople(people);
		}
	}

}
