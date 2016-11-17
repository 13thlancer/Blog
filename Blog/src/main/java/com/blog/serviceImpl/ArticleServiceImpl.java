package com.blog.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.entity.Article;
import com.blog.mapper.ArticleMapper;
import com.blog.mapper.ReactMapper;
import com.blog.service.ArticleServiceI;

@Service("ArticleService")
public class ArticleServiceImpl implements ArticleServiceI{

	@Autowired
	private ArticleMapper articleMapper;
	
	@Autowired
	private ReactMapper reactMapper;
	
	@Override
	public List<Article> showArticle() {
		return articleMapper.showArticle();
	}

	@Override
	public Article showDetail(String id) {
		Article article = articleMapper.showDetail(id);
		int count = reactMapper.countComment(id);
		int zancount = reactMapper.countZan(id);
		article.setCommentcount(count);
		article.setZancount(zancount);
		return article;
	}

	@Override
	public List<Article> showArticleBytype(String mtype) {
		List<Article> list = articleMapper.showArticleBytype(mtype);
		for(int i=0;i<list.size();i++){
			list.get(i).getArticleid();
		}
		return articleMapper.showArticleBytype(mtype);
	}

	@Override
	public List<Article> showLatestArticle() {
		return articleMapper.showLatestArticle();
	}

	@Override
	public List<Article> showArticleZan(String openid) {
		return articleMapper.showArticleZan(openid);
	}
	
	@Override
	public List<Article> showArticleByPtype(String ptype) {
		return articleMapper.showArticleByPtype(ptype);
	}


}
