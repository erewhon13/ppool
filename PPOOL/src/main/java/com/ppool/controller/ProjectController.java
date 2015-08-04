package com.ppool.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.catalina.tribes.group.interceptors.FragmentationInterceptor;
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

import com.ppool.dto.JoinProject;
import com.ppool.dto.Project;
import com.ppool.dto.ProjectComment;
import com.ppool.dto.User;
import com.ppool.service.JoinService;
import com.ppool.service.ProjectService;

@Controller
public class ProjectController {

	private ProjectService projectService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,
				true));
	}

	@Autowired
	@Qualifier("projectService")
	public void setProjectService(ProjectService projectService) {
		this.projectService = projectService;
		
	}
	
	////////////////////////조인 서비스 등록
	private JoinService joinService;
	
	@Autowired
	@Qualifier("joinService")
	public void setJoinService(JoinService joinService){
		this.joinService=joinService;
	}
	////////////////////////////////////
	
	@RequestMapping(value="projectlist.action" ,method = RequestMethod.GET)
	public ModelAndView projectList(){
		List<Project> projects = projectService.getProjectList();

		for (Project project : projects) {
			Calendar cal = Calendar.getInstance();
			long nowDay = cal.getTimeInMillis();

			int year = project.getProjectExpire().getYear();
			int month = project.getProjectExpire().getMonth();
			int date = project.getProjectExpire().getDate();

			cal.set(year + 1900, month, date);// 목표일
			long eventDay = cal.getTimeInMillis();
			int y = (int) ((eventDay - nowDay) / (24 * 60 * 60 * 1000));
			project.setProjectStatus(y);
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project/projectlist");
		mav.addObject("projects", projects);
		return mav;
	}

	@RequestMapping(value = "projectregister.action", method = RequestMethod.GET)
	public ModelAndView projectRegisteform() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project/projectregister");
		return mav;
	}

	@RequestMapping(value = "projectregister.action", method = RequestMethod.POST)
	public ModelAndView projectRegister(Project project) {
		project.setProjectEmail(project.getEmail1() + "@" + project.getEmail2());
		project.setProjectPhone(project.getPhone1() + "-" + project.getPhone2()
				+ "-" + project.getPhone3());

		projectService.projectRegister(project);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/projectlist.action");
		return mav;
	}

	@RequestMapping(value = "projectdetailview.action", method = RequestMethod.GET)
	public ModelAndView projectDetailView(int projectNo, HttpSession session) {
		Project project = projectService.getProjectByProjectNo(projectNo);
		List<ProjectComment> comments = projectService.getCommentsByProjectNo(projectNo);

		String locations = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getLocation()));
		String skills = StringUtils.collectionToCommaDelimitedString(Arrays.asList(project.getSkill()));

		ModelAndView mav = new ModelAndView();
		// userNo와 projectNo로 북마크테이블에서 count를 조회(where userNo =? and projectNo =?)
		// 로그인하지않고도 뷰를 볼 수 있게
		HashMap<String, Object> params = new HashMap<String, Object>();
		User user = (User) session.getAttribute("loginuser");
		if (user != null) {
			int userNo = user.getUserNo();
			params.put("userNo", userNo);
			params.put("projectNo", projectNo);
			int count = projectService.getBookmarkCount(params);
			mav.addObject("favoriteProjects", count);
		} else {
			mav.addObject("favoriteProjects", 0);
		}
		
		///////projectNo에 따른 joinList 조회
				List<JoinProject> joinLists=joinService.getJoinList(projectNo);
				mav.addObject("joinlists", joinLists);
		/////////////////////////////////////////////////////////////		

		mav.addObject("project", project);
		mav.addObject("comments", comments);
		mav.addObject("locations", locations);
		mav.addObject("skills", skills);

		mav.setViewName("project/projectdetailview");
		return mav;
	}

	@RequestMapping(value = "projectdelete.action", method = RequestMethod.POST)
	public ModelAndView projectDelete(int projectNo) {
		ModelAndView mav = new ModelAndView();
		projectService.projectDelete(projectNo);
		mav.setViewName("redirect:/projectlist.action");
		return mav;
	}

	@RequestMapping(value = "projectmodify.action", method = RequestMethod.GET)
	public ModelAndView projectModifyForm(int projectNo) {
		Project project = projectService.getProjectByProjectNo(projectNo);

		String locations = StringUtils.collectionToCommaDelimitedString(Arrays
				.asList(project.getLocation()));
		String skills = StringUtils.collectionToCommaDelimitedString(Arrays
				.asList(project.getSkill()));
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

	@RequestMapping(value = "projectmodify.action", method = RequestMethod.POST)
	public ModelAndView projectModify(Project project) {
		project.setProjectEmail(project.getEmail1() + "@" + project.getEmail2());
		project.setProjectPhone(project.getPhone1() + "-" + project.getPhone2()
				+ "-" + project.getPhone3());

		projectService.projectModify(project);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/projectdetailview.action?projectNo="
				+ project.getProjectNo());
		return mav;
	}

	
	/** *********************************************************************************** **/ 
	
	
	/////////////////////////////////////////////////////////////////////////////////////
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
		for (Project project : projects) {
			Calendar cal = Calendar.getInstance();
			long nowDay = cal.getTimeInMillis();

			int year = project.getProjectExpire().getYear();
			int month = project.getProjectExpire().getMonth();
			int date = project.getProjectExpire().getDate();

			cal.set(year + 1900, month, date);// 목표일
			long eventDay = cal.getTimeInMillis();
			int y = (int) ((eventDay - nowDay) / (24 * 60 * 60 * 1000));
			project.setProjectStatus(y);
		}
				
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project/projectbookmarklist");
		mav.addObject("projects", projects);
		return mav;
	}
	
	@RequestMapping(value = "projectbookmarkdelete.action", method = RequestMethod.GET)
	public String projectBookmarkDelete(int projectNo) {
		projectService.projectBookmarkDelete(projectNo);
		return "redirect:/projectdetailview.action?projectNo="+projectNo;
		
	}
	
	/////////////////////////////////////////////////////////////////////////////////////
	
	
	
	/** *********************************************************************************** **/ 
	
	////////////////코멘트 영역///////////////////////	
	@RequestMapping(value="commentregister.action",method = RequestMethod.POST, produces="text/plain;charset=utf-8")
	@ResponseBody
	public ModelAndView commentRegister(ProjectComment comment) {
		projectService.commentRegister(comment);
		int commentNo = comment.getCommentNo();

		ProjectComment newComment = projectService.getCommentByCommentNo(commentNo);

		ModelAndView mav = new ModelAndView();
		mav.addObject("newComment", newComment);
		mav.setViewName("project/newcomment");
		return mav;
	}
		
	@RequestMapping(value="commentdelete.action",method = RequestMethod.POST)
	@ResponseBody
	public String commentDelete(int commentNo){
		projectService.commentDelete(commentNo);
		return "delete";
	}	
	
	@RequestMapping(value="commentupdate.action",method = RequestMethod.POST)
	@ResponseBody
	public String commentUpdate(ProjectComment comment){
		projectService.commentUpdate(comment);
		return "update";
	}	
	////////////////코멘트 영역///////////////////////
	


	
	
	
	
	//////////////////미구현/////////////////////////////////////////
	@RequestMapping(value="searchproject.action", method = RequestMethod.POST)
	public String searchProject(ArrayList<String> skill, ArrayList<String> location){
		HashMap<String, Object> params = new HashMap<String, Object>(); 
		params.put("skills", skill);
		List<HashMap<String, Object>> list= new ArrayList<HashMap<String, Object>>();
		list.add(params);
		
		List<ArrayList<String>> ll = new ArrayList<>();
		ll.add(skill);
		
		//params.put("locations", location);
		
		for (String i : skill) {
			System.out.println(i);
		}
		
		
		int[] nos = projectService.searchProject(params);
		//int[] nos = projectService.searchProject2(skill);
		//int[] nos = projectService.searchProject3(list);
		projectService.searchProject4(ll);
		
//		for (int i : nos) {
//			System.out.println(i);
//		}
		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("redirect:/projectlist.action");
		return "success";
	}
		
		
		
}
