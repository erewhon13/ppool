package com.ppool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.ppool.service.NotificationService;

@Controller
@RequestMapping(value = "/")
public class NotificationController {
	
//	private NotificationRepository notificationRepository;

	@Autowired
	private NotificationService notificationService;
	
	@RequestMapping(value = "notificationlist.action", method = RequestMethod.GET)
	public ModelAndView notificationList()  {
		
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("notification/notificationlist");
		
		return mav;
	}
	
	
	@RequestMapping(value = "notificationwriteform.action", method = RequestMethod.GET)
	public ModelAndView notificationWriteForm()  {
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notification/notificationwriteform");
		
		return mav;
	}
}
