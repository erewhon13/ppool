package com.ppool.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.UserResume;
import com.ppool.service.UserResumeService;


@Controller
public class UserResumeController {
	ModelAndView mav = new ModelAndView();
	
	@Autowired
	@Qualifier("userResumeService")
	
	private UserResumeService userResumeService;
	
	
	@RequestMapping(value="resume.action", method=RequestMethod.GET)
	public ModelAndView resumeRegister(){
		
		mav.setViewName("users/userresume");
		return mav;
	}
	
	
	@RequestMapping(value="resumewrite.action", method=RequestMethod.POST)
	public ModelAndView reumeRegister(UserResume resume){
		
//		public ModelAndView reumeRegister(HttpServletRequest request, HttpServletResponse resp,HttpSession session){
//		
//		String resumeSchool = request.getParameter("resumeSchool");
//		String resumeUserMajor = request.getParameter("resumeUserMajor");

		
		resume.getUserResumeNo();
		
		userResumeService.userRegister(resume);
		
		mav.setViewName("redirect:/resumewrite.action");
		return mav;
	}
	
}
