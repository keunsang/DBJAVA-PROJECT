package com.dbjava.userClass;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionInterceptor extends HandlerInterceptorAdapter {
	//컨트롤러 시작전
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("인터셉터 PreHandle");
		if(request.getSession().getAttribute("id")==null) {
			response.sendRedirect("./");
			return false;//로그인시
		}
		return true;
	}
	//컨트롤러 끝난뒤
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("인터셉터 PostHandle");
		super.postHandle(request, response, handler, modelAndView);
	}
	
	

}