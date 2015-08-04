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
	//날자 변환
	@InitBinder
	protected void initBinder(WebDataBinder binder){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	//서비스 연결
	@Autowired
	@Qualifier("notificationService")
	private NotificationService notificationService;

	//공지사항 목록
	@RequestMapping(value = "notificationlist.action", method = RequestMethod.GET)
	public ModelAndView notificationList() {

		ModelAndView mav = new ModelAndView();
		List<Notification> notifications = notificationService.notificationList();

		mav.setViewName("notification/notificationlist");
		mav.addObject("notifications", notifications);

		return mav;
	}
	
	
	//글쓰기 양식 연결
	@RequestMapping(value = "notificationwriteform.action", method = RequestMethod.GET)
	public ModelAndView notificationWriteForm() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("notification/notificationwriteform");

		return mav;
	}
	//글쓰기
	@RequestMapping(value = "notificationwrite.action", method = RequestMethod.POST)
	public String insertNotification(@ModelAttribute Notification notification) {
		
		notificationService.insertNotification(notification);
		return "redirect:/notificationlist.action";
	}
	//상세보기
	@RequestMapping(value = "notificationview.action", method = RequestMethod.GET)
	public ModelAndView notificationView(int notificationNo) {
		
		Notification notification = notificationService.notificationView(notificationNo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notification/notificationview");
		mav.addObject("notification", notification);
		
		return mav;
	}
	//수정 양식 연결
	@RequestMapping(value = "notificationeditform.action", method = RequestMethod.GET)
	public ModelAndView notificationEditForm(int notificationNo) {
		 
		Notification notification = notificationService.notificationView(notificationNo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notification/notificationeditform");
		mav.addObject("notification", notification);
		return mav;
	}
	//수정하기
	@RequestMapping(value = "notificationupdate.action", method = RequestMethod.POST)
	public String notificationUpdate(int notificationNo, Notification notification) {
		
		notificationService.notificationUpdate(notification);
		
		return "redirect:notificationlist.action";
	}
	//삭제하기
	@RequestMapping(value = "notificationdelete.action", method = RequestMethod.GET)
	public String notificationDelete(int notificationNo) {
		
		notificationService.notificationDelete(notificationNo);
		
		return "redirect:notificationlist.action";
	}
	
	
}
