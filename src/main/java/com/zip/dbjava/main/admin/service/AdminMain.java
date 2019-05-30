package com.zip.dbjava.main.admin.service;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.admin.bean.Admin;
@Service
public class AdminMain {

	ModelAndView mv;
	public ModelAndView adMvLogin() {
		mv.setViewName("admin/admin");
		return mv;
	}
	public ModelAndView adLogin(Admin ad) {
		System.out.println("??????????????");
		
		return null;
	}

	
	
	
	
}
