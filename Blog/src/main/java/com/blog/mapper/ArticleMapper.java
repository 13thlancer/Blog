package com.blog.mapper;

import java.util.List;

import com.blog.entity.Article;

public interface ArticleMapper {
	
	List<Article> showArticle();
	
	Article showDetail(String id);
	
	List<Article> showArticleBytype(String mtype);
	
	List<Article> showLatestArticle();
	
	List<Article> showArticleZan(String openid);

}
