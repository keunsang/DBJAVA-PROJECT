package com.zip.dbjava.member.controller;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
//모델객체 mb를 생성하면 request영역에 
//session이 종료 될 때까지 저장한다.
public class MemberController {
	
	@Autowired
	HttpSession session;
	
	ModelAndView mav; //싱글턴 관리 대상 아님
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView main() {
		mav=new ModelAndView();
		mav.setViewName("main/index");//로그인 페이지로 이동
		return mav;
	}
}
