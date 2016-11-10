package com.blog.entity;

import java.util.Date;

public class User {
	
	private String userid;
			
	private String YZJID;
	
	private String phone;
	
	private String email;
	
	private String peopleid;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getYZJID() {
		return YZJID;
	}

	public void setYZJID(String yZJID) {
		YZJID = yZJID;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPeopleid() {
		return peopleid;
	}

	public void setPeopleid(String peopleid) {
		this.peopleid = peopleid;
	}


}
