package com.ppool.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
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
import com.ppool.util.ChangeWord;

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
		
		for (Project project : projects) {
//			project.setStampStart(ChangeWord.dateToString(project.getProjectStartDay()));
//			project.setStampEnd(ChangeWord.dateToString(project.getProjectEndDay()));
			
			Calendar cal = Calendar.getInstance();
			long nowDay = cal.getTimeInMillis();
			
			int year = project.getProjectExpire().getYear();
			int month = project.getProjectExpire().getMonth();
			int date = project.getProjectExpire().getDate();
			
			cal.set(year+1900,month,date);//목표일
			long eventDay = cal.getTimeInMillis();
			int y =(int)((eventDay - nowDay) / (24 * 60 * 60 * 1000));
			project.setProjectStatus(y);
			
//			project.setStampExpire(ChangeWord.dateToString(project.getProjectExpire()));
			
		}
		
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
	public ModelAndView projectRegister(Project project){
		
		project.setProjectEmail(project.getEmail1()+"@"+project.getEmail2());
		project.setProjectPhone(project.getPhone1()+"-"+project.getPhone2()+"-"+project.getPhone3());
		project.setUserNo(43);
		
		if(project.getLocation().length > 0){
			for (String location : project.getLocation()) {
				/*projectService.sfdlfjsdf(location*/
			}
		}
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
	
	@RequestMapping(value="projectdelete.action" ,method = RequestMethod.GET)
	public ModelAndView projectDelete(int projectNo){
		projectService.projectDelete(projectNo);
		
		mav.setViewName("redirect:/projectlist.action");
		return mav;
	}
	
}
