package com.zip.dbjava.property.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.property.bean.Property;
import com.zip.dbjava.property.dao.PropertyDao;

public class PropertyMM {
	
	@Autowired
	private PropertyDao pDao;
	
	ModelAndView mav;

	public ModelAndView propertyEnroll(Property p) {
		mav = new ModelAndView();
		String view = null;
		
		if (pDao.propertyInsert(p)) {
			view="index";
		} else {
			mav.addObject("insertfail", "필수 사항을 입력해주세요.");
		}
		
		mav.setViewName(view);
		return mav;
	}

}
