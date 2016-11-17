package com.blog.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class RequireOrder {
	private String id;
	private String userid;      
	private String username;
	private String conusername;
	private String phone;
	private String require;
	private String num;
	private String type;
	private String requirestatus;
	private Date CreateTime;
	private Date UpdateTime;
	
	  
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getConusername() {
		return conusername;
	}
	public void setConusername(String conusername) {
		this.conusername = conusername;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRequire() {
		return require;
	}
	public void setRequire(String require) {
		this.require = require;
	}
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public String getRequirestatus() {
		return requirestatus;
	}
	public void setRequirestatus(String requirestatus) {
		this.requirestatus = requirestatus;
	}
	

	
}
