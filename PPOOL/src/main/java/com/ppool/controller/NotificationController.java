package com.ppool.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.Notification;
import com.ppool.repository.NotificationRepository;
import com.ppool.service.NotificationService;
import com.ppool.service.ProjectService;

@Controller
public class NotificationController {
	
	@InitBinder
	protected void initBinder(WebDataBinder binder){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@Autowired
	@Qualifier("notificationService")
	private NotificationService notificationService;

	@RequestMapping(value = "notificationlist.action", method = RequestMethod.GET)
	public ModelAndView notificationList() {

		ModelAndView mav = new ModelAndView();
		List<Notification> notifications = notificationService.notificationList();

		mav.setViewName("notification/notificationlist");
		mav.addObject("notifications", notifications);

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
	
	@RequestMapping(value = "notificationview.action", method = RequestMethod.GET)
	public ModelAndView notificationView(int notificationNo) {
		
		Notification notification = notificationService.notificationView(notificationNo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notification/notificationview");
		mav.addObject("notification", notification);
		
		return mav;
	}
	
	@RequestMapping(value = "notificationeditform.action", method = RequestMethod.GET)
	public ModelAndView notificationEditForm(int notificationNo) {
		//상세보기의 정보를 
		Notification notification = notificationService.notificationView(notificationNo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notification/notificationeditform");
		mav.addObject("notification", notification);
		return mav;
	}
	
	@RequestMapping(value = "notificationupdate.action", method = RequestMethod.POST)
	public String notificationUpdate(int notificationNo, Notification notification) {
		
		notificationService.notificationUpdate(notification);
		
		return "redirect:/notification/notificationlist.action";
	}
	
	
}
