package com.zip.dbjava.member.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("message")
@Setter @Getter
public class Message {
	private String me_code;
	private String me_s_mid;
	private String me_r_mid;
	private String me_contents;
	private String me_sendtime;
	private int me_complete;
	
	
	
	
}
