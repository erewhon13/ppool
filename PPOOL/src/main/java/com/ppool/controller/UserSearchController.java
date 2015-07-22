package com.ppool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserSearchController {
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value = "search.action", method = RequestMethod.GET)
	public ModelAndView home() {
		
		mav.setViewName("users/searchuser");
		return mav;
	}
	
}

