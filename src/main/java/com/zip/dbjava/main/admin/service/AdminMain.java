package com.zip.dbjava.main.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.admin.bean.Admin;
import com.zip.dbjava.main.admin.dao.AdMainDao;
@Service
public class AdminMain {
	@Autowired
	AdMainDao admDao;
	
	
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
		admDao.adLogin();
		//아이디세션저장 DAO가서 아이디 비밀번호 확인@@
		mv.setViewName("admin/adminIndex");
		return mv;
	}
	public ModelAndView adlogout(Admin ad) {
		mv=new ModelAndView();
		//세션비우기@@
		mv.setViewName("admin/admin");
		return mv;
	}

	public ModelAndView adMvQnA() {
		mv=new ModelAndView();
		//DAO가서 QnA 테이블 select하고  QnA bean 저장
		mv.setViewName("adQnA");
		return mv;
	}

	public ModelAndView adMvReport() {
		mv=new ModelAndView();
		//DAO가서 select 하고 Report Bean 저장
		mv.setViewName("adReport");
		return mv;
	}

	public ModelAndView adMvMemberModify() {
		mv=new ModelAndView();
		// DAO가서 select 하고 Member Bean에 List로 저장 
		mv.setViewName("adMemberModify");
		return mv;
	}

	public ModelAndView pMvRAuction() {
		mv=new ModelAndView();
		//DAO가서  select 하고 역경매 Bean 에 List로 저장
		mv.setViewName("adReverseAuctionModify");
		return mv;
	}

	public ModelAndView adMvPrtReqList() {
		mv=new ModelAndView();
		//DAO가서 select 하고 Property Bean에 List로 저장
		mv.setViewName("adPropertyRequestList");
		return mv;
	}

	public ModelAndView adMvPropertyInfoModify() {
		mv=new ModelAndView();
		//DAO가서 select 하고 Property Bean에 List로 저장
		mv.setViewName("adMvPropertyInfoModify");
		return mv;
	}

	
	
	
	
}
