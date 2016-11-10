package com.blog.entity;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Article {
	
	private String articleid;
	private String title;
	private String content;
	private String titlepicpath;
	private String type;
	private int messagetype;
	private int Status;
	private int Seq;
	
	
	private int commentcount;
	private int zancount;
	
	private List<MessageType> mtype;
	
	private Date CreateTime;
	
	private Date UpdateTime;
	
	public String getArticleid() {
		return articleid;
	}
	public void setArticleid(String articleid) {
		this.articleid = articleid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitlepicpath() {
		return titlepicpath;
	}
	public void setTitlepicpath(String titlepicpath) {
		this.titlepicpath = titlepicpath;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	

	public int getCommentcount() {
		return commentcount;
	}
	public void setCommentcount(int commentcount) {
		this.commentcount = commentcount;
	}
	public int getZancount() {
		return zancount;
	}
	public void setZancount(int zancount) {
		this.zancount = zancount;
	}
	public int getMessagetype() {
		return messagetype;
	}
	public void setMessagetype(int messagetype) {
		this.messagetype = messagetype;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public int getSeq() {
		return Seq;
	}
	public void setSeq(int seq) {
		Seq = seq;
	}
	public List<MessageType> getMtype() {
		return mtype;
	}
	public void setMtype(List<MessageType> mtype) {
		this.mtype = mtype;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	public Date getCreateTime() {
		return CreateTime;
	}
	public void setCreateTime(Date createTime) {
		CreateTime = createTime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	public Date getUpdateTime() {
		return UpdateTime;
	}
	public void setUpdateTime(Date updateTime) {
		UpdateTime = updateTime;
	}
	
	

}
