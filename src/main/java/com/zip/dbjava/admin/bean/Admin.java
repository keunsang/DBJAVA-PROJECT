package com.zip.dbjava.admin.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("admin")
@Getter
@Setter
public class Admin {
	private String a_id;
	private String a_pw;
	private String a_name;

}
