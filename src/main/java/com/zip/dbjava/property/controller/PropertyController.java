package com.zip.dbjava.property.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.zip.dbjava.property.bean.Property;

@Controller
public class PropertyController {

	private static final Logger logger = LoggerFactory.getLogger(PropertyController.class);
	ModelAndView mav;
	
	@RequestMapping(value = "/propertyEnroll", method = RequestMethod.POST)
	public ModelAndView propertyEnroll(Property p) {
		mav = new ModelAndView();
		mav.setViewName("index");
		
		return mav;
	}
}
