package com.ppool.controller;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.mail.search.IntegerComparisonTerm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.Project;
import com.ppool.service.ProjectService;
import com.ppool.service.UserService;
import com.ppool.util.Util;

@Controller
public class ProjectController {

	ModelAndView mav = new ModelAndView();
	private ProjectService projectService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
//	private UserService userService;
//	@Autowired
//	@Qualifier("userService")
//	public void setUserService(UserService userService) {
//		this.userService = userService;
//	}
	@Autowired
	@Qualifier("projectService")
	public void setProjectService(ProjectService projectService) {
		this.projectService = projectService;
	}
	
	@RequestMapping(value="projectlist.action" ,method = RequestMethod.GET)
	public ModelAndView projectList(){
		List<Project> projects = projectService.getProjectList();
		
		for (Project project : projects) {
			Calendar cal = Calendar.getInstance();
			long nowDay = cal.getTimeInMillis();
			
			int year = project.getProjectExpire().getYear();
			int month = project.getProjectExpire().getMonth();
			int date = project.getProjectExpire().getDate();
			
			cal.set(year+1900,month,date);//목표일
			long eventDay = cal.getTimeInMillis();
			int y =(int)((eventDay - nowDay) / (24 * 60 * 60 * 1000));
			project.setProjectStatus(y);
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

	@RequestMapping(value="projectregister.action",method = RequestMethod.POST)
	public ModelAndView projectRegister(Project project){
		
		project.setProjectEmail(project.getEmail1()+"@"+project.getEmail2());
		project.setProjectPhone(project.getPhone1()+"-"+project.getPhone2()+"-"+project.getPhone3());
		project.setUserNo(43);
		
		projectService.projectRegister(project);
		
		int projectNo = project.getProjectNo();
		
		if(project.getSkill() != null && project.getSkill().length > 0){
			for (String skillNo : project.getSkill() ) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("skillNo", skillNo);
				params.put("projectNo", projectNo);
				
				projectService.projectSkillRegister(params);
			}
		}
		if(project.getLocation() != null && project.getLocation().length > 0){
			for (String locationNo : project.getLocation() ) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("locationNo", locationNo);
				params.put("projectNo", projectNo);
				
				projectService.projectLocationRegister(params);
			}
		}
		
		mav.setViewName("redirect:/projectlist.action");
		return mav;
	}
	
	@RequestMapping(value="projectdetailview.action" ,method = RequestMethod.GET)
	public ModelAndView projectDetailView(int projectNo){
		Project project = projectService.getProjectByProjectNo(projectNo);
		
		String locations = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getLocation()));
		String skills = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getSkill()));
		String email1 = project.getProjectEmail().split("@")[0];
		String email2 = project.getProjectEmail().split("@")[1];
		String phone1 = project.getProjectPhone().split("-")[0];
		String phone2 = project.getProjectPhone().split("-")[1];
		String phone3 = project.getProjectPhone().split("-")[2];
		
		mav.addObject("project", project);
		mav.addObject("locations", locations);
		mav.addObject("skills", skills);
		mav.addObject("email1", email1);
		mav.addObject("email2", email2);
		mav.addObject("phone1", phone1);
		mav.addObject("phone2", phone2);
		mav.addObject("phone3", phone3);

		mav.setViewName("project/projectdetailview");
		return mav;
	}
	
	@RequestMapping(value="projectdelete.action" ,method = RequestMethod.GET)
	public ModelAndView projectDelete(int projectNo){
		projectService.projectDelete(projectNo);
		
		mav.setViewName("redirect:/projectlist.action");
		return mav;
	}
	
	@RequestMapping(value="projectmodify.action" ,method = RequestMethod.GET)
	public ModelAndView projectModify(int projectNo){
		Project project = projectService.getProjectByProjectNo(projectNo);
		
		String locations = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getLocation()));
		String skills = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getSkill()));
		String email1 = project.getProjectEmail().split("@")[0];
		String email2 = project.getProjectEmail().split("@")[1];
		String phone1 = project.getProjectPhone().split("-")[0];
		String phone2 = project.getProjectPhone().split("-")[1];
		String phone3 = project.getProjectPhone().split("-")[2];
		
		System.out.println(project.getUserNo());
		
		mav.addObject("project", project);
		mav.addObject("locations", locations);
		mav.addObject("skills", skills);
		mav.addObject("email1", email1);
		mav.addObject("email2", email2);
		mav.addObject("phone1", phone1);
		mav.addObject("phone2", phone2);
		mav.addObject("phone3", phone3);
		
		mav.setViewName("project/projectmodify");
		return mav;
	}
	
}
