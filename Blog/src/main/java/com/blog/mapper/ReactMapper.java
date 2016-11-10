package com.blog.mapper;

import java.util.List;

import com.blog.entity.React;

public interface ReactMapper {
	
	int addReact(React react);
	
	
	List<React> showComment(String id);
	
	int countComment(String id);
	
	int countZan(String id);

}
