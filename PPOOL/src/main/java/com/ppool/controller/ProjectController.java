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

import com.ppool.dto.Project;
import com.ppool.service.ProjectService;

@Controller
public class ProjectController {

	ModelAndView mav = new ModelAndView();
	private ProjectService projectService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
	
	
	@Autowired
	@Qualifier("projectService")
	public void setProjectService(ProjectService projectService) {
		this.projectService = projectService;
	}
	
	@RequestMapping(value="projectlist.action" ,method = RequestMethod.GET)
	public ModelAndView projectList(){
		List<Project> projects = projectService.getProjectList();
		
		mav.setViewName("project/projectlist");
		mav.addObject("projects", projects);
		return mav;
	}
	
	@RequestMapping(value="projectregister.action" ,method = RequestMethod.GET)
	public ModelAndView registeform(){
		mav.setViewName("project/projectregister");
		return mav;
	}
	
	int a = 0;
	@RequestMapping(value="projectregister.action",method = RequestMethod.POST)
	public ModelAndView projectRegister(Project project, String email1, String email2, 
			String phone1, String phone2, String phone3){
		
		project.setProjectEmail(email1+"@"+email2);
		project.setProjectPhone(phone1+"-"+phone2+"-"+phone3);
		project.setProjectLocation("서울");
		project.setUserNo(43);
		
		projectService.projectRegister(project);
		
		mav.setViewName("redirect:/projectlist.action");
		return mav;
	}
	
	@RequestMapping(value="projectdetailview.action" ,method = RequestMethod.GET)
	public ModelAndView projectDetailView(int projectNo){
		Project project = projectService.getProjectByProjectNo(projectNo);
		
		mav.setViewName("project/projectdetailview");
		mav.addObject("project", project);
		
		return mav;
	}
	
	/*@RequestMapping(value="projectdelete.action" ,method = RequestMethod.GET)
	public ModelAndView projectDelete(int projectNo){
		projectService.projectDelete(projectNo);
		mav.setViewName("project/projectdetailview");
		
		mav.setViewName("redirect:/projectlist.action");
		return mav;
	}
	*/
}
