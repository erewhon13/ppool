package com.ppool.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.UserResume;
import com.ppool.service.UserResumeService;


@Controller
public class UserResumeController {
	ModelAndView mav = new ModelAndView();
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,
				true));
	}
	
	
	@Autowired
	@Qualifier("userResumeService")
	
	private UserResumeService userResumeService;
	
	@RequestMapping(value="resume.action", method=RequestMethod.GET)
	public ModelAndView resumeRegister(int userNo){
		
		UserResume userResume  = userResumeService.getUserResume(userNo);
		
		
		mav.addObject("userResume",userResume);
		mav.setViewName("users/userresume");
		return mav;
		
	}
	
	
	@RequestMapping(value="resumewrite.action", method=RequestMethod.POST)
	public ModelAndView resumeRegister(UserResume resume){
		
//		public ModelAndView reumeRegister(HttpServletRequest request, HttpServletResponse resp,HttpSession session){
//		
//		String resumeSchool = request.getParameter("resumeSchool");
//		String resumeUserMajor = request.getParameter("resumeUserMajor");

		
		userResumeService.userRegister(resume);
		
		mav.setViewName("redirect:/resumewrite.action");
		return mav;
	}
	
}
