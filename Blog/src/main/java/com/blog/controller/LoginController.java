package com.blog.controller;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.entity.People;
import com.blog.entity.User;
import com.blog.service.LoginServiceI;

@Controller
@RequestMapping("/LoginController")
public class LoginController {
	
	@Autowired
	private LoginServiceI loginServiceI; 
	
	@RequestMapping(value = "LogBind", method = RequestMethod.POST)
	@ResponseBody
	public void LogBind(String openid,String name,String email,String photoUrl,HttpSession httpSession){
		
//		System.out.println(openid);
//		System.out.println(name);
		User user = new User(); 
		People people = new People();
		String userid = UUID.randomUUID().toString();
		String peopleid = UUID.randomUUID().toString();
		Date date = new Date();
		
		user.setUserid(userid);
		user.setEmail(email);
		user.setPeopleid(peopleid);
		user.setYZJID(openid);
		
		people.setId(openid);
		people.setName(name);
		people.setPicpath(photoUrl);
		people.setCreatetime(date);
		
		httpSession.setAttribute("openid", openid);  
		httpSession.setAttribute("username", name);
		
		loginServiceI.BindUser(user,people);
	}

}
