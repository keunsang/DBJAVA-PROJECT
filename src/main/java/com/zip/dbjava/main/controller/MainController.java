package com.zip.dbjava.main.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.main.service.MainManagement;
import com.zip.dbjava.member.controller.MemberController;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	MainManagement main;
	
	HttpSession session;
	
	ModelAndView mav;
	
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)

	public String header() {

		return "main/header";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView mLogout() {
		mav=main.mLogout();		
		return mav;
	}
	
	
	
	

}
