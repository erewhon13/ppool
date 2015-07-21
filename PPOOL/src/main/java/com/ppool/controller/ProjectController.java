package com.ppool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.service.ProjectService;

@Controller
public class ProjectController {

	ModelAndView mav = new ModelAndView();
	private ProjectService projectService;
	
	@Autowired
	@Qualifier("projectService")
	public void setProjectService(ProjectService projectService) {
		this.projectService = projectService;
	}
	
	@RequestMapping(value="registerproject.action" ,method = RequestMethod.GET)
	public ModelAndView registerform(){
		mav.setViewName("project/registerproject");
		return mav;
	}
	
	
}
