package com.blog.service;

import java.util.List;

import com.blog.entity.React;

public interface ReactServiceI {
	
	void Comment(String id,String peopleid,String content);
	
	List<React> showComment(String id);
	
	void Zan(String id,String openid);
	

}
