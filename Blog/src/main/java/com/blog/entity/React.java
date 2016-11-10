package com.blog.entity;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class React {
	private String id;
	private String articleid;
	private String commentorid;
	private String reactorid;
	private String reacttype;
	private String content;
	private Date reactdate;
	private List<People> people;
	private int ZanCount;
	
	public int getZanCount() {
		return ZanCount;
	}
	public void setZanCount(int zanCount) {
		ZanCount = zanCount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getArticleid() {
		return articleid;
	}
	public void setArticleid(String articleid) {
		this.articleid = articleid;
	}
	public String getCommentorid() {
		return commentorid;
	}
	public void setCommentorid(String commentorid) {
		this.commentorid = commentorid;
	}
	public String getReactorid() {
		return reactorid;
	}
	public void setReactorid(String reactorid) {
		this.reactorid = reactorid;
	}
	public String getReacttype() {
		return reacttype;
	}
	public void setReacttype(String reacttype) {
		this.reacttype = reacttype;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	public Date getReactdate() {
		return reactdate;
	}
	
	public void setReactdate(Date reactdate) {
		this.reactdate = reactdate;
	}
	public List<People> getPeople() {
		return people;
	}
	public void setPeople(List<People> people) {
		this.people = people;
	}
	
	

}
