package com.blog.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.entity.React;
import com.blog.service.ReactServiceI;

@Controller
@RequestMapping("/ReactController")
public class ReactController {
	
	@Autowired
	private ReactServiceI reactServiceI;
	
	@ResponseBody
	@RequestMapping(value="Comment",method=RequestMethod.POST)
	public void comment(String id,String content,HttpSession httpSession){
		String openid = (String) httpSession.getAttribute("openid");  
		reactServiceI.Comment(id,openid,content);
	}

	@ResponseBody
	@RequestMapping(value="ShowComment",method=RequestMethod.POST)
	public List<React> showComment(String id){
		return reactServiceI.showComment(id);
	}
	
	@ResponseBody
	@RequestMapping(value="Zan",method=RequestMethod.POST)
	public React Zan(String id,HttpSession httpSession){
		String openid = (String) httpSession.getAttribute("openid");  
		return reactServiceI.Zan(id,openid);
	}
	

}
