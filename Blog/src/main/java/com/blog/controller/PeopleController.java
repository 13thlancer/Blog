package com.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.entity.People;
import com.blog.service.PeopleServiceI;

@Controller
@RequestMapping("/PeopleController")
public class PeopleController {
	
	@Autowired
	private PeopleServiceI peopleServiceI;
	
	@RequestMapping(value = "showPeople", method = RequestMethod.POST)
	@ResponseBody
	public List<People> showPeople(){
		return peopleServiceI.showPeople();		
	}

	@RequestMapping(value = "showDetail", method = RequestMethod.POST)
	@ResponseBody
	public List<People> showDetail(String id){
		return peopleServiceI.showDetail(id);		
	}
	
}
