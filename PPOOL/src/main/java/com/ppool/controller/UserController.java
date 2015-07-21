package com.ppool.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.User;
import com.ppool.service.UserService;

@Controller
public class UserController {
	ModelAndView mav = new ModelAndView();
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,
				true));
	}
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="registerview.action" ,method = RequestMethod.GET)
	public ModelAndView registerView(){
		mav.setViewName("users/register");
		return mav;
	}
	@RequestMapping(value="registeruser.action",method = RequestMethod.POST)
	public ModelAndView registerUser(User user){
		userService.registerUser(user);
		mav.setViewName("redirect:home.action");
		return mav;
	}
}
