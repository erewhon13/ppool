package com.finalproject.repository;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value = "home.action", method = RequestMethod.GET)
	public ModelAndView home() {
		
		mav.setViewName("index");
		return mav;
	}
	
}
