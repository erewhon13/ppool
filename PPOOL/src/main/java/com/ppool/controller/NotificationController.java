package com.ppool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.Notification;
import com.ppool.repository.NotificationRepository;
import com.ppool.service.NotificationService;
import com.ppool.service.ProjectService;

@Controller
public class NotificationController {

	@Autowired
	@Qualifier("notificationService")
	private NotificationService notificationService;

	@RequestMapping(value = "notificationlist.action", method = RequestMethod.GET)
	public ModelAndView notificationList() {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("notification/notificationlist");

		return mav;
	}

	@RequestMapping(value = "notificationwriteform.action", method = RequestMethod.GET)
	public ModelAndView notificationWriteForm() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("notification/notificationwriteform");

		return mav;
	}
	@RequestMapping(value = "notificationwrite.action", method = RequestMethod.POST)
	public String insertNotification(@ModelAttribute Notification notification) {
		
		notificationService.insertNotification(notification);
		return "redirect:/notificationlist.action";
	}
}
