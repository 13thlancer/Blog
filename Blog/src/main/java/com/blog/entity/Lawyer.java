package com.blog.entity;

import java.util.Date;
import java.util.List;

public class Lawyer {

	private String lawyerid;
	
	private String picpath;
	
	private String lawyername;
	
	private String type;
	
	private String phone;
	
	private String introduce;
	
	private String status;
	
	private Date createtime;
	
	private Date updatetime;

	private List<MessageType> mtype;


	public String getLawyerid() {
		return lawyerid;
	}

	public void setLawyerid(String lawyerid) {
		this.lawyerid = lawyerid;
	}

	public String getPicpath() {
		return picpath;
	}

	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}

	

	public String getLawyername() {
		return lawyername;
	}

	public void setLawyername(String lawyername) {
		this.lawyername = lawyername;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public List<MessageType> getMtype() {
		return mtype;
	}

	public void setMtype(List<MessageType> mtype) {
		this.mtype = mtype;
	}

	
}
