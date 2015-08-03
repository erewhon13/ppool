package com.ppool.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import com.ppool.dto.User;
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
		List<ResumeSchool> resumeSchools = userResumeService.getResumeSchools(userNo);
		mav.addObject("resumeSchools",resumeSchools);
		
		List<ResumeEducation> resumeEducations = userResumeService.getResumeEducations(userNo);
		mav.addObject("resumeEducations", resumeEducations);
		
		List<ResumeLicense> resumeLicenses = userResumeService.getResumeLicenses(userNo);
		mav.addObject("resumeLicenses", resumeLicenses);
		
		List<ResumeLanguage> resumeLanguages = userResumeService.getResumeLanguages(userNo);
		mav.addObject("resumeLanguages", resumeLanguages);
		
		ResumeIntroduction resumeIntroductions = userResumeService.getResumeIntroductions(userNo);
		mav.addObject("resumeIntroductions", resumeIntroductions);
		
		
		mav.setViewName("users/userresume");
		return mav;
		
	}
	
	
	//학력사항 등록
	@RequestMapping(value="formresumeschool.action", method=RequestMethod.POST)
	public ModelAndView resumeSchoolRegister(ResumeSchool resumeschool, HttpSession session){

		ModelAndView mav = new ModelAndView();
		userResumeService.resumeSchoolRegister(resumeschool);
		User user = (User) session.getAttribute("loginuser");
		mav.setViewName("redirect:/resume.action?userNo="+user.getUserNo());
		return mav;
	}
	//교육사항 등록
	@RequestMapping(value="formresumeeducation.action",method=RequestMethod.POST)
	public ModelAndView resumeEducationRegister(ResumeEducation resumeeducation,HttpSession session){
		ModelAndView mav = new ModelAndView();
		userResumeService.resumeEducationRegister(resumeeducation);
		User user = (User) session.getAttribute("loginuser");
		mav.setViewName("redirect:/resume.action?userNo="+user.getUserNo());
		return mav;
	}
	//자격증 등록 
	@RequestMapping(value="formresumelicense.action",method=RequestMethod.POST)
	public ModelAndView resumeLicenseRegister(ResumeLicense resumelicense, HttpSession session){
		ModelAndView mav = new ModelAndView();
		userResumeService.resumeLicenseRegister(resumelicense);
		User user = (User) session.getAttribute("loginuser");
		mav.setViewName("redirect:/resume.action?userNo="+user.getUserNo());
		return mav;
	}
	//외국어 등록
	@RequestMapping(value="formresumelanguage.action",method=RequestMethod.POST)
	public ModelAndView resumeLanguageRegister(ResumeLanguage resumelanguage,HttpSession session){
		ModelAndView mav = new ModelAndView();
		userResumeService.resumeLanguageRegister(resumelanguage);
		User user = (User) session.getAttribute("loginuser");
		mav.setViewName("redirect:/resume.action?userNo="+user.getUserNo());
		return mav;
	}
	//자기소개서 등록
	@RequestMapping(value="resumeintroduction.action", method=RequestMethod.POST)
	public ModelAndView resumeIntroductionRegister(ResumeIntroduction resumeIntroduction,HttpSession session){
		ModelAndView mav = new ModelAndView();
		userResumeService.resumeIntroductionRegister(resumeIntroduction);
		User user = (User) session.getAttribute("loginuser");
		mav.setViewName("redirect:/resume.action?userNo="+user.getUserNo());
		return mav;
	}
	
	// 삭제 
	@RequestMapping(value="resumeschooldelete.action", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView deleteResumeSchool(int resumeSchoolNo,HttpSession session){
		ModelAndView mav = new ModelAndView();
		userResumeService.deleteResumeSchool(resumeSchoolNo);
		User user = (User) session.getAttribute("loginuser");
		mav.setViewName("redirect:/resume.action?userNo="+user.getUserNo());
		return mav;
	}
	@RequestMapping(value="resumeeducationdelete.action", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView deleteResumeEducation(int resumeEducationNo,HttpSession session){
		ModelAndView mav = new ModelAndView();
		userResumeService.deleteResumeEducation(resumeEducationNo);
		User user = (User) session.getAttribute("loginuser");
		mav.setViewName("redirect:/resume.action?userNo="+user.getUserNo());
		return mav;
	}
	@RequestMapping(value="resumelicensedelete.action", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView deleteResumeLicense(int resumeLicenseNo,HttpSession session){
		ModelAndView mav = new ModelAndView();
		userResumeService.deleteResumeLicense(resumeLicenseNo);
		User user = (User) session.getAttribute("loginuser");
		mav.setViewName("redirect:/resume.action?userNo="+user.getUserNo());
		return mav;
	}
	@RequestMapping(value="resumelanguagedelete.action", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView deleteResumeLanguage(int resumeLanguageNo,HttpSession session){
		ModelAndView mav = new ModelAndView();
		userResumeService.deleteResumeLanguage(resumeLanguageNo);
		User user = (User) session.getAttribute("loginuser");
		mav.setViewName("redirect:/resume.action?userNo="+user.getUserNo());
		return mav;
	}
	
	
	
	//수정 
	@RequestMapping(value="editformresumeschool.action", method=RequestMethod.POST)
	public ModelAndView updateResumeSchool(ResumeSchool resumeSchool){
		
			ModelAndView mav = new ModelAndView();
			userResumeService.updateResumeSchool(resumeSchool);
			mav.setViewName("redirect:/resume.action?userNo="+resumeSchool.getUserNo());
			return mav;
	}
	
	@RequestMapping(value="editformresumeeducation.action", method=RequestMethod.POST)
	public ModelAndView updateResumeEducation(ResumeEducation resumeEducation){
		
			ModelAndView mav = new ModelAndView();
			userResumeService.updateResumeEducation(resumeEducation);
			mav.setViewName("redirect:/resume.action?userNo="+resumeEducation.getUserNo());
			return mav;
	}
	
	@RequestMapping(value="editformresumeLicense.action", method=RequestMethod.POST)
	public ModelAndView updateResumeLicense(ResumeLicense resumeLicense){
		
			ModelAndView mav = new ModelAndView();
			userResumeService.updateResumeLicense(resumeLicense);
			mav.setViewName("redirect:/resume.action?userNo="+resumeLicense.getUserNo());
			return mav;
	}
	
	@RequestMapping(value="editformresumeLanguage.action", method=RequestMethod.POST)
	public ModelAndView updateResumeLanguage(ResumeLanguage resumeLanguage){
		
			ModelAndView mav = new ModelAndView();
			userResumeService.updateResumeLanguage(resumeLanguage);
			mav.setViewName("redirect:/resume.action?userNo="+resumeLanguage.getUserNo());
			return mav;
	}
	
	@RequestMapping(value="editformresumeIntroduction.action", method=RequestMethod.POST)
	public ModelAndView updateResumeIntroduction(ResumeIntroduction resumeIntroduction){
		
			ModelAndView mav = new ModelAndView();
			userResumeService.updateResumeIntroduction(resumeIntroduction);
			mav.setViewName("redirect:/resume.action?userNo="+resumeIntroduction.getUserNo());
			return mav;
	}
	
	
	
	
}
