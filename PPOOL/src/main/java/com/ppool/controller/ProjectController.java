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
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.Project;
import com.ppool.dto.ProjectComment;
import com.ppool.service.ProjectService;
import com.ppool.service.UserService;
import com.ppool.util.Util;

@Controller
public class ProjectController {
	
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
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project/projectlist");
		mav.addObject("projects", projects);
		return mav;
	}
	
	@RequestMapping(value="projectregister.action" ,method = RequestMethod.GET)
	public ModelAndView projectRegisteform(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project/projectregister");
		return mav;
	}

	@RequestMapping(value="projectregister.action",method = RequestMethod.POST)
	public ModelAndView projectRegister(Project project){
		project.setProjectEmail(project.getEmail1()+"@"+project.getEmail2());
		project.setProjectPhone(project.getPhone1()+"-"+project.getPhone2()+"-"+project.getPhone3());
		
		projectService.projectRegister(project);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/projectlist.action");
		return mav;
	}
	
	@RequestMapping(value="projectdetailview.action" ,method = RequestMethod.GET)
	public ModelAndView projectDetailView(int projectNo){
		Project project = projectService.getProjectByProjectNo(projectNo);
		List<ProjectComment> comments = projectService.getCommentsByProjectNo(projectNo);
		
		String locations = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getLocation()));
		String skills = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getSkill()));
		
		ModelAndView mav = new ModelAndView();
		//userNo와 projectNo로 북마크테이블에서 count를 조회(where userNo =? and projectNo =?)
				HashMap<String, Object> params = new  HashMap<String, Object>();
				int userNo = 91;
				params.put("userNo", userNo);
				params.put("projectNo", projectNo);
				int count = projectService.getBookmarkCount(params);
				System.out.println(count);
				mav.addObject("bookmarkable", count);
				////////////////////////////////////////////////////////////////////////////
		mav.addObject("project", project);
		mav.addObject("comments", comments);
		mav.addObject("locations", locations);
		mav.addObject("skills", skills);
	
		mav.setViewName("project/projectdetailview");
		return mav;
	}

	@RequestMapping(value="projectdelete.action" ,method = RequestMethod.POST)
	public ModelAndView projectDelete(int projectNo, String checkMessage){
		/************************************
		 * 									*
		 * 	  잘못된 요청에 대한 필터링 없음...ㅠㅠ	*
		 * 									*
		 ************************************/
		ModelAndView mav = new ModelAndView();
		System.out.println("2222");
		projectService.projectDelete(projectNo);
		
		mav.setViewName("redirect:/projectlist.action");
		return mav;
	}
	
	@RequestMapping(value="projectmodify.action" ,method = RequestMethod.GET)
	public ModelAndView projectModifyForm(int projectNo){
		Project project = projectService.getProjectByProjectNo(projectNo);
		
		String locations = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getLocation()));
		String skills = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getSkill()));
		String email1 = project.getProjectEmail().split("@")[0];
		String email2 = project.getProjectEmail().split("@")[1];
		String phone1 = project.getProjectPhone().split("-")[0];
		String phone2 = project.getProjectPhone().split("-")[1];
		String phone3 = project.getProjectPhone().split("-")[2];
		project.setEmail1(email1);
		project.setEmail2(email2);
		project.setPhone1(phone1);
		project.setPhone2(phone2);
		project.setPhone3(phone3);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("project", project);
		mav.addObject("locations", locations);
		mav.addObject("skills", skills);
		
		mav.setViewName("project/projectmodify");
		return mav;
	}
	
	@RequestMapping(value="projectmodify.action" ,method = RequestMethod.POST)
	public ModelAndView projectModify(Project project){
		project.setProjectEmail(project.getEmail1()+"@"+project.getEmail2());
		project.setProjectPhone(project.getPhone1()+"-"+project.getPhone2()+"-"+project.getPhone3());
		
		projectService.projectModify(project);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/projectdetailview.action?projectNo="+project.getProjectNo());
		return mav;
	}
	
	@RequestMapping(value="commentregister.action",method = RequestMethod.POST, produces="text/plain;charset=utf-8")
	@ResponseBody
	public ModelAndView commentRegister(ProjectComment comment){
		projectService.commentRegister(comment);
		int commentNo = comment.getCommentNo();
		
		ProjectComment newComment = projectService.getCommentsByCommentNo(commentNo);
		System.out.println(newComment.getCommentRegisterDay());
		System.out.println(newComment.getUserName());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("newComment", newComment);
		mav.setViewName("project/newcomment");
		return mav;
	}
	
	//북마크 등록
		@RequestMapping(value = "projectbookmarks.action", method = RequestMethod.GET)
		public String projectBookmarks(int userNo, int projectNo,Model model) {
			HashMap<String, Object> params = new HashMap<String, Object>();
			params.put("userNo", userNo);
			params.put("projectNo", projectNo);
			projectService.projectBookmarks(params);
			
			
			
			return "redirect:/projectdetailview.action?projectNo="+projectNo;
		}
		//북마크 목록
		@RequestMapping(value="projectbookmarklist.action" ,method = RequestMethod.GET)
		public ModelAndView projectBookmarkList(int userNo){
			
			//사용자의 favorite을 조회(userno로 projectfavorite를 조회)
			
			
			List<Project> projects = projectService.projectBookmarkList(userNo);
					
			ModelAndView mav = new ModelAndView();
			mav.setViewName("project/projectbookmarklist");
			mav.addObject("projects", projects);
			return mav;
		}
	
}
