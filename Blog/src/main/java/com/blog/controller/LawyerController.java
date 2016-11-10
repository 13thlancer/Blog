package com.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.entity.Lawyer;
import com.blog.service.LawyerServiceI;

@Controller
@RequestMapping("/LawyerController")
public class LawyerController {
	
	@Autowired
	private LawyerServiceI lawyerServiceI;
	
	@ResponseBody
	@RequestMapping(value="showLawyer", method=RequestMethod.POST)
	public List<Lawyer> showLawyer(String mtype){
		return lawyerServiceI.showLawyer(mtype);
	}

}
