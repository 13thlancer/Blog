package com.blog.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.lucene.queryParser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.Utils.Lucene;
import com.blog.entity.RequireOrder;
import com.blog.service.RequireOrderServiceI;

@Controller
@RequestMapping("/RequireOrderController")
public class RequireOrderController {
	
	@Autowired
	private RequireOrderServiceI requireOrderServiceI;
	
	@ResponseBody
	@RequestMapping(value="ShowMyOrder",method=RequestMethod.POST)
	public List<RequireOrder> ShowMyOrder(String openid){
		return requireOrderServiceI.showMyOrder(openid);
	}

	@ResponseBody
	@RequestMapping(value="AddOrder",method=RequestMethod.POST)
	public void AddOrder(RequireOrder requireorder){
		requireOrderServiceI.AddOrder(requireorder);
	}
	
	@ResponseBody
	@RequestMapping(value="UpdateOrder",method=RequestMethod.POST)
	public void UpdateOrder(RequireOrder requireorder){
		
	}
	
	@ResponseBody
	@RequestMapping(value="ShowMyPushOrder",method=RequestMethod.POST)
	public void ShowMyPushOrder(String openid){
		
	}
	
	@ResponseBody
	@RequestMapping(value="search",method=RequestMethod.POST)
	public List<RequireOrder> search(String openid,String search){
		Lucene lucene = new Lucene();
		List<RequireOrder> list = new ArrayList<RequireOrder>();
		try {
			list = lucene.search(requireOrderServiceI.showMyOrder(openid), search);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (java.text.ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
