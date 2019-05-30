package com.zip.dbjava.main.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zip.dbjava.member.controller.MemberController;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String home() {
		
		
		
		return "main/header";
	}
	
	
	
	
	

}
