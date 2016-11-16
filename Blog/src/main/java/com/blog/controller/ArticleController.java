package com.blog.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.entity.Article;
import com.blog.service.ArticleServiceI;

@Controller
@RequestMapping("/ArticleController")
public class ArticleController {
	
	@Autowired
	private ArticleServiceI articleServiceI;
	
	@ResponseBody
	@RequestMapping(value="showArticle",method=RequestMethod.POST)
	public List<Article> showArticle(){
		return articleServiceI.showArticle();
	}
	
	@ResponseBody
	@RequestMapping(value="showDetail",method=RequestMethod.POST)
	public Article showDetail(String id){
		return articleServiceI.showDetail(id);
	}
	
	@ResponseBody
	@RequestMapping(value="showArticleBytype",method=RequestMethod.POST)
	public List<Article> showArticleBytype(String mtype,HttpSession httpSession){
		String openid = (String) httpSession.getAttribute("openid");  
		return articleServiceI.showArticleBytype(mtype);
	}

	@ResponseBody
	@RequestMapping(value="showLatestArticle",method=RequestMethod.POST)
	public List<Article> showLatestArticle(){
		return articleServiceI.showLatestArticle();
	}
	
	@ResponseBody
	@RequestMapping(value="showArticleZan",method=RequestMethod.POST)
	public List<Article> showArticleZan(HttpSession httpSession){
		String openid = (String) httpSession.getAttribute("openid");  
		return articleServiceI.showArticleZan(openid);
	}
}
