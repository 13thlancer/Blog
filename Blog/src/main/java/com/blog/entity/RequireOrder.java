package com.blog.entity;

import java.util.Date;

public class RequireOrder {
	private String id;
	private String userid;
	private String username;
	private String conusername;
	private String phone;
	private String require;
	private int num;
	private String type;
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
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getCreateTime() {
		return CreateTime;
	}
	public void setCreateTime(Date createTime) {
		CreateTime = createTime;
	}
	public Date getUpdateTime() {
		return UpdateTime;
	}
	public void setUpdateTime(Date updateTime) {
		UpdateTime = updateTime;
	}
	

	
}
