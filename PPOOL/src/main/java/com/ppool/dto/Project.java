package com.ppool.dto;

import java.util.Date;

public class Project {
	private int projectNo;
	private int userNo;
	private String projectTitle;
	private String projectContent;
	private int projectTeamCount;
	private String projectLocation;
	private Date projectStartDay;
	private Date projectEndDay;
	private Date projectExpire;
	private Date projectRegisterDay;
	private int projectStatus;
	private String projectPhone;
	private String projectEmail;
	
	/////////////////뷰에서 Date를 보기 좋게 하기위해 사용하는 필드///////////////////
	private String stampStart;
	private String stampEnd;
	private String stampExpire;
	private String stampRegisterDay;
	
	public String getStampRegisterDay() {
		return stampRegisterDay;
	}
	public void setStampRegisterDay(String stampRegisterDay) {
		this.stampRegisterDay = stampRegisterDay;
	}
	public String getStampStart() {
		return stampStart;
	}
	public void setStampStart(String stampStart) {
		this.stampStart = stampStart;
	}
	public String getStampEnd() {
		return stampEnd;
	}
	public void setStampEnd(String stampEnd) {
		this.stampEnd = stampEnd;
	}
	public String getStampExpire() {
		return stampExpire;
	}
	public void setStampExpire(String stampExpire) {
		this.stampExpire = stampExpire;
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
	public String getProjectLocation() {
		return projectLocation;
	}
	public void setProjectLocation(String projectLocation) {
		this.projectLocation = projectLocation;
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
