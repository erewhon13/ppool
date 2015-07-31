package com.ppool.dto;

import java.util.Date;
import java.util.List;

public class Project {
	private int projectNo;
	private int userNo;
	private String projectTitle;
	private String projectContent;
	private int projectTeamCount;
	private Date projectStartDay;
	private Date projectEndDay;
	private Date projectExpire;
	private Date projectRegisterDay;
	private int projectStatus;
	private String projectPhone;
	private String projectEmail;
	
	//////////////////////////////////////////////////////////////
	List<ProjectComment> comments;
	
	public List<ProjectComment> getComments() {
		return comments;
	}
	public void setComments(List<ProjectComment> comments) {
		this.comments = comments;
	}
	//////////////////////////////////////////////////////////////
	private String userName;
	private String phone1;
	private String phone2;
	private String phone3;
	private String email1;
	private String email2;
	private String[] skill;
	private String[] location;
	
//////////////////////////////////////////////////////////////
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
//////////////////////////////////////////////////////////////
	
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String[] getSkill() {
		return skill;
	}
	public void setSkill(String[] skill) {
		this.skill = skill;
	}
	public String[] getLocation() {
		return location;
	}
	public void setLocation(String[] location) {
		this.location = location;
	}
	//////////////////////////////////////////////////////////////

	public int getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getProjectTitle() {
		return projectTitle;
	}
	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}
	public String getProjectContent() {
		return projectContent;
	}
	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
	}
	public int getProjectTeamCount() {
		return projectTeamCount;
	}
	public void setProjectTeamCount(int projectTeamCount) {
		this.projectTeamCount = projectTeamCount;
	}
	public Date getProjectStartDay() {
		return projectStartDay;
	}
	public void setProjectStartDay(Date projectStartDay) {
		this.projectStartDay = projectStartDay;
	}
	public Date getProjectEndDay() {
		return projectEndDay;
	}
	public void setProjectEndDay(Date projectEndDay) {
		this.projectEndDay = projectEndDay;
	}
	public Date getProjectExpire() {
		return projectExpire;
	}
	public void setProjectExpire(Date projectExpire) {
		this.projectExpire = projectExpire;
	}
	public Date getProjectRegisterDay() {
		return projectRegisterDay;
	}
	public void setProjectRegisterDay(Date projectRegisterDay) {
		this.projectRegisterDay = projectRegisterDay;
	}
	public int getProjectStatus() {
		return projectStatus;
	}
	public void setProjectStatus(int projectStatus) {
		this.projectStatus = projectStatus;
	}
	public String getProjectPhone() {
		return projectPhone;
	}
	public void setProjectPhone(String projectPhone) {
		this.projectPhone = projectPhone;
	}
	public String getProjectEmail() {
		return projectEmail;
	}
	public void setProjectEmail(String projectEmail) {
		this.projectEmail = projectEmail;
	}
	
	
	
	
}
