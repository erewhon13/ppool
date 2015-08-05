package com.ppool.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.History;
import com.ppool.dto.Project;
import com.ppool.dto.ResumeEducation;
import com.ppool.dto.ResumeLanguage;
import com.ppool.dto.ResumeLicense;
import com.ppool.dto.ResumeSchool;
import com.ppool.dto.User;
import com.ppool.service.UserSearchService;

@Controller
public class UserSearchController {
	ModelAndView mav = new ModelAndView();

	private UserSearchService userSearchService;

	@Autowired
	@Qualifier("userSearchService")
	public void setUserSearchService(UserSearchService userSearchService) {
		this.userSearchService = userSearchService;
	}

	@RequestMapping(value = "search.action", method = RequestMethod.GET)
	public ModelAndView userSearchList() {
		ModelAndView mav = new ModelAndView();
		List<User> users = userSearchService.getUserSearchList();

		mav.addObject("users", users); // getattribute (데이터 출력을 위해 데이터 가져오기)
		mav.setViewName("users/searchuser");
		return mav;
	}

	@RequestMapping(value = "userdetailview.action", method = RequestMethod.GET)
	public ModelAndView userSearchDetailView(int userNo) {
		ModelAndView mav = new ModelAndView();
		User users = userSearchService.getUserDetailView(userNo);
		mav.addObject("users", users); // getattribute (데이터 출력을 위해 데이터 가져오기)
		
		List<ResumeSchool> resumeSchools = userSearchService.getResumeSchools(userNo);
		mav.addObject("resumeSchools", resumeSchools);
		
		List<ResumeEducation> resumeEducations = userSearchService.getResumeEducations(userNo);
		mav.addObject("resumeEducations", resumeEducations);
		
		List<ResumeLicense> resumeLicenses = userSearchService.getResumeLicenses(userNo);
		mav.addObject("resumeLicenses", resumeLicenses);
		
		List<ResumeLanguage> resumeLanguages = userSearchService.getResumeLanguages(userNo);
		mav.addObject("resumeLanguages", resumeLanguages);
		
		List<History> histories = userSearchService.getHistoryList(userNo);
		mav.addObject("histories", histories);
		
		mav.setViewName("users/userdetailview");
		return mav;
	}

	@RequestMapping(value = "searchuser.action", method = RequestMethod.POST)
	public ModelAndView userSearch(String[] skill,String[] location) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("skills", skill);
		params.put("locations", location);
		System.out.println(skill);
		String[] list = userSearchService.searchUsers(params);
		for (String string : list) {
			System.out.println(string);
		}
		return mav;
	}

}
