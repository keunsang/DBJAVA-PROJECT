package com.zip.dbjava.main.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.member.bean.Message;
import com.zip.dbjava.member.dao.MemberMyPageMessageDao;

@Component
public class MainManagement {
	
	@Autowired
	private MemberMyPageMessageDao mMsgDao;
	@Autowired
	private HttpSession session; 

	private ModelAndView mav;

	public ModelAndView mLogout() {
		session.invalidate();
		String view="main/index";
		mav.setViewName(view);		
		return mav;
	}
	

	public List<Message> mMsgNoticDetail() {
		String id=session.getAttribute("id").toString();
		List<Message> msgList;
		if(id==null || id=="") {
			System.out.println("메시지 없음");
			msgList=null;
		}
		msgList=mMsgDao.mMsgNoticDetail(id);
		System.out.println("msgList="+msgList);
		
		return msgList;
	}
	
	
	
	
	
	
	
	
	
	
	

}
