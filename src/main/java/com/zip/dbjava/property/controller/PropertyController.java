package com.zip.dbjava.property.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.property.bean.Property;
import com.zip.dbjava.property.service.PropertyMM;

@Controller
public class PropertyController {

	private static final Logger logger = LoggerFactory.getLogger(PropertyController.class);
	
	private PropertyMM pmm;
	ModelAndView mav;
	
	@RequestMapping(value = "/propertyEnroll", method = RequestMethod.POST)
	public ModelAndView propertyEnroll(Property p) {
		System.out.println("id: "+p.getP_mid());
		mav = pmm.propertyEnroll(p);
		
		mav.setViewName("index");
		return mav;
	}
}
