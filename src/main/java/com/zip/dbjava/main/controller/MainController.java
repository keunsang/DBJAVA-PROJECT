package com.zip.dbjava.main.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.main.service.MainManagement;
import com.zip.dbjava.member.controller.MemberController;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	MainManagement main;
	
	HttpSession session;
	
	ModelAndView mav;
	
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
<<<<<<< HEAD
	public String header() {
=======
	public String home() {
		
		
		
>>>>>>> c4c4a99f2099ee7ad1095597457be17a9fb0c994
		return "main/header";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView mLogout() {
		mav=main.mLogout();		
		return mav;
	}
	
	
	
	

}
