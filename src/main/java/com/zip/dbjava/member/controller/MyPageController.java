package com.zip.dbjava.member.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPage(Locale locale, Model model) {
		logger.info("굳");

		return "member/myPage";
	}
	
	@RequestMapping(value = "/profileModify", method = RequestMethod.GET)
	public String profileModify() {
		logger.info("굳");
		
		return "member/profileModify";
	}
	
	
	@RequestMapping(value = "/messageMain", method = RequestMethod.GET)
	public String messageMain() {
		logger.info("굳");
		
		return "member/messageMain";
	}
	
	
	@RequestMapping(value = "/myAuction", method = RequestMethod.GET)
	public String myAuction() {
		logger.info("굳");
		
		return "member/myAuction";
	}
	
	
	@RequestMapping(value = "/manageAuction", method = RequestMethod.GET)
	public String manageAuction() {
		logger.info("굳");
		
		return "member/manageAuction";
	}
	
	
	@RequestMapping(value = "/manageProperty", method = RequestMethod.GET)
	public String manageProperty() {
		logger.info("굳");
		
		return "member/manageProperty";
	}
	
	
	@RequestMapping(value = "/myReservation", method = RequestMethod.GET)
	public String myReservation() {
		logger.info("굳");
		
		return "member/myReservation";
	}
	
	
	@RequestMapping(value = "/saveProperty", method = RequestMethod.GET)
	public String saveProperty() {
		logger.info("굳");
		
		return "member/saveProperty";
	}
	
	
	@RequestMapping(value = "/myPoint", method = RequestMethod.GET)
	public String myPoint() {
		logger.info("굳");
		
		return "member/myPoint";
	}
	
	
	@RequestMapping(value = "/questionList", method = RequestMethod.GET)
	public String questionList() {
		logger.info("굳");
		
		return "member/questionList";
	}
	
}
