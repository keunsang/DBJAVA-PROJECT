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

@Controller
public class PropertyController {

	private static final Logger logger = LoggerFactory.getLogger(PropertyController.class);
	
	@RequestMapping(value = "/addProperty", method = RequestMethod.GET)
	public String home() {

		
		return "property/addProperty";
	}
}
