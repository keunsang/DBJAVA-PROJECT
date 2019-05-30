package com.dbjava.member.main.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dbjava.member.controller.MemberController;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header(Locale locale, Model model) {
		
		
		
		return "header";
	}
	
	
	
	
	

}
