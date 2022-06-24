package com.okhospital.controller;

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
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}	
	@RequestMapping("sub1")
	public String sub1() {
		return "sub1";
	}
	@RequestMapping("sub2")
	public String sub2() {
		return "sub2";
	}
	@RequestMapping("sub3")
	public String sub3() {
		return "sub3";
	}
	@RequestMapping("sub4")
	public String sub4() {
		return "sub4";
	}
	@RequestMapping("sub5")
	public String sub5() {
		return "sub5";
	}
}
