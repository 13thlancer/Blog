package com.blog.mapper;

import java.util.List;

import com.blog.entity.Lawyer;

public interface LawyerMapper {
	
	List<Lawyer> showLawyer(String mtype);

}
