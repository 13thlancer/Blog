package com.blog.serviceImpl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.entity.React;
import com.blog.mapper.ReactMapper;
import com.blog.service.ReactServiceI;

@Service("ReactService")
public class ReactServiceImpl implements ReactServiceI{

	@Autowired
	private ReactMapper reactMapper;

	@Override
	public void Comment(String id, String peopleid, String content) {
			React react = new React();
			String reactid = UUID.randomUUID().toString();
			Date date = new Date();
			
			react.setArticleid(id);
			react.setContent(content);
			react.setReactorid(peopleid);
			react.setId(reactid);
			react.setReactdate(date);
			react.setReacttype("1");
			reactMapper.addReact(react);
	}

	@Override
	public List<React> showComment(String id) {
		List<React> list = reactMapper.showComment(id);
		for(int i = 0;i< list.size();i++){
			int zancount = reactMapper.countZan(list.get(i).getId());
			list.get(i).setZanCount(zancount);
		}
		return list;
	}

	@Override
	public React Zan(String id, String openid) {
		React react = new React();
		String reactid = UUID.randomUUID().toString();
	
		Date date = new Date();
		
		react.setArticleid(id);
		react.setReactorid(openid);
		react.setId(reactid);
		react.setReactdate(date);
		react.setReacttype("2");
		List<React> list  = reactMapper.selectReactById(react);
		if(list.isEmpty()){
			reactMapper.addReact(react);
			react.setZanCount(reactMapper.countZan(id));
			return react;
		}else{
			react.setZanCount(reactMapper.countZan(id));
			return react;
		}
	}

}
