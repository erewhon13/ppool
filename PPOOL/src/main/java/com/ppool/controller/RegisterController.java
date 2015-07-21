package com.ppool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
	ModelAndView mav = new ModelAndView();
	@RequestMapping(value="register.action" ,method = RequestMethod.GET)
	public ModelAndView registerMember(){
		mav.setViewName("users/register");
		return mav;
	}
}
