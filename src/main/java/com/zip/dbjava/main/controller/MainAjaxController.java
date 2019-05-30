package com.zip.dbjava.main.controller;


import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.main.service.MainManagement;
import com.zip.dbjava.member.bean.Message;




@RestController
//@RequestMapping(value = "/ajax")
public class MainAjaxController {

		MainManagement main;
		
		ModelAndView mav;
	
		
		
		@RequestMapping(value = "/ajaxMsgNoticDetail", method = RequestMethod.GET) 	
		//json을 커맨드 객체에 저장하기 위해서는 @RequestBody를 사용해야 함
		public List<Message> mMsgNoticDetail() {
			List<Message> list=main.mMsgNoticDetail();
			
			return list;
		}
		

}