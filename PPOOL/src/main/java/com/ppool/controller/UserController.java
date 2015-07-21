package com.ppool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.User;
import com.ppool.service.UserService;

@Controller
public class UserController {
	ModelAndView mav = new ModelAndView();
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="registerview.action" ,method = RequestMethod.GET)
	public ModelAndView registerView(){
		mav.setViewName("users/register");
		return mav;
	}
	@RequestMapping(value="registeruser.action",method = RequestMethod.GET)
	public ModelAndView registerUser(User user){
		userService.registerUser(user);
		return mav;
	}
}
