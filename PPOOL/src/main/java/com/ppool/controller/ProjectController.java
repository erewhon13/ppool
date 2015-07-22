package com.ppool.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.Project;
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
	
	@RequestMapping(value="projectlist.action" ,method = RequestMethod.GET)
	public ModelAndView projectList(){
		//List<Project> projects = projectService.getProjectList();
		
		mav.setViewName("project/projectlist");
		//mav.addObject("projects", projects);
		return mav;
	}
	
	@RequestMapping(value="registerproject.action" ,method = RequestMethod.GET)
	public ModelAndView registeform(){
		mav.setViewName("project/registerproject");
		return mav;
	}
	
	@RequestMapping(value="registerproject.action",method = RequestMethod.POST)
	public ModelAndView registerProject(Project project, String email1, String email2, 
			String phone1, String phone2, String phone3){
		project.setProjectEmail(email1+"@"+email2);
		project.setProjectPhone(phone1+"-"+phone2+"-"+phone3);
		project.setProjectLocation("서울");
		project.setUserNo(9);
		project.setProjectStatus(1);
		
		projectService.registerProject(project);
		
		mav.setViewName("redirect:/registerproject.action");
		return mav;
	}
	
	
}
