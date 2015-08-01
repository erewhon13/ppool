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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.ResumeEducation;
import com.ppool.dto.ResumeIntroduction;
import com.ppool.dto.ResumeLanguage;
import com.ppool.dto.ResumeLicense;
import com.ppool.dto.ResumeSchool;
import com.ppool.service.UserResumeService;


@Controller
public class UserResumeController {
	
	@Autowired
	@Qualifier("userResumeService")
	
	private UserResumeService userResumeService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,
				true));
	}
	
	//시작페이지 열기 
	@RequestMapping(value="resume.action", method=RequestMethod.GET)
	public ModelAndView getResumeSchools(int userNo){
		ModelAndView mav = new ModelAndView();
		//el 문  value값 보내주기 위해 dto객체 가져오기 
		//ResumeIntroduction userResume  = userResumeService.getUserResume(userNo);
		//mav.addObject("userResume",userResume);
		
		List<ResumeSchool> resumeSchools = userResumeService.getResumeSchools(userNo);
		//ResumeSchool resumeSchool = userResumeService.getResumeSchool(userNo);
		mav.addObject("resumeSchools",resumeSchools);
		
		mav.setViewName("users/userresume");
		return mav;
		
	}
	
	
	//학력사항 등록
	@RequestMapping(value="formresumeschool.action", method=RequestMethod.POST)
	public ModelAndView resumeSchoolRegister(ResumeSchool resumeschool){
		ModelAndView mav = new ModelAndView();
		userResumeService.resumeSchoolRegister(resumeschool);
		mav.setViewName("users/userresume");
		return mav;
	}
	//교육사항 등록
	@RequestMapping(value="formresumeeducation.action",method=RequestMethod.POST)
	public ModelAndView resumeEducationRegister(ResumeEducation resumeeducation){
		ModelAndView mav = new ModelAndView();
		userResumeService.resumeEducationRegister(resumeeducation);
		mav.setViewName("users/userresume");
		return mav;
	}
	//자격증 등록 
	@RequestMapping(value="formresumelicense.action",method=RequestMethod.POST)
	public ModelAndView resumeLicenseRegister(ResumeLicense resumelicense){
		ModelAndView mav = new ModelAndView();
		userResumeService.resumeLicenseRegister(resumelicense);
		mav.setViewName("users/userresume");
		return mav;
	}
	//외국어 등록
	@RequestMapping(value="formresumelanguage.action",method=RequestMethod.POST)
	public ModelAndView resumeLanguageRegister(ResumeLanguage resumelanguage){
		ModelAndView mav = new ModelAndView();
		userResumeService.resumeLanguageRegister(resumelanguage);
		mav.setViewName("users/userresume");
		return mav;
	}
	//자기소개서 등록
	@RequestMapping(value="resumeintroduction.action", method=RequestMethod.POST)
	public ModelAndView resumeIntroductionRegister(ResumeIntroduction resumeIntroduction){
		ModelAndView mav = new ModelAndView();
		userResumeService.resumeIntroductionRegister(resumeIntroduction);
		mav.setViewName("users/userresume");
		return mav;
	}
	
	
	
}
