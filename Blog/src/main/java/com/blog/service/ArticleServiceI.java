package com.blog.service;

import java.util.List;

import com.blog.entity.Article;

public interface ArticleServiceI {
	
	List<Article> showArticle();
	
	Article showDetail(String id);
	
	List<Article> showArticleBytype(String mtype);
	
	List<Article> showLatestArticle();

	List<Article> showArticleZan(String openid);


}
