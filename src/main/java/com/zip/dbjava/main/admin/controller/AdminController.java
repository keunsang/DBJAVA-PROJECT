package com.zip.dbjava.main.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.admin.bean.Admin;
import com.zip.dbjava.main.admin.service.AdminMain;
import com.zip.dbjava.member.controller.MemberController;

@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private AdminMain as;// 게시판 서비스 클래스 (Model)

	ModelAndView mv;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminMvLogin() {
		mv = as.adMvLogin();
		return mv;
	}

	@RequestMapping(value = "/adLogin", method = RequestMethod.POST)
	public ModelAndView adlogin(Admin ad) {
		 mv = as.adLogin(ad);
		return mv;
	}

	@RequestMapping(value = "/adlogout", method = RequestMethod.POST)
	public ModelAndView adlogout(Admin ad) {
		mv = as.adlogout(ad);
		return mv;
	}
}
