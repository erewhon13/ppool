package com.ppool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserResumeController {

	ModelAndView mav = new ModelAndView();

	
	@RequestMapping(value="resume.action", method=RequestMethod.GET)
	public ModelAndView resume(){
		
		mav.setViewName("users/userresume");
		return mav;
	}
}
