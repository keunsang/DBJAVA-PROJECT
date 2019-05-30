package com.zip.dbjava.main.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.admin.bean.Admin;
@Service
public class AdminMain {
	@Autowired
	
	
	
	ModelAndView mv;
	public ModelAndView adMvLogin() {
		mv=new ModelAndView();
		mv.setViewName("admin/admin");
		return mv;
	}
	
	public ModelAndView adLogin(Admin ad) {
		mv=new ModelAndView();
		System.out.println("id="+ad.getA_id());
		System.out.println("pw="+ad.getA_pw());
		
		return mv;
	}
	public ModelAndView adlogout(Admin ad) {
		mv=new ModelAndView();
		return null;
	}

	
	
	
	
}
