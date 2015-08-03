package com.ppool.dto;

import java.util.Date;

public class ResumeEducation {

	private int userNo;
	private int resumeEducationNo;
	private String resumeEducation;
	private Date resumeEducationStartDay;
	private Date resumeEducationEndDay;
	private String resumeEducationCenter;
	
	
	public int getResumeEducationNo() {
		return resumeEducationNo;
	}
	public void setResumeEducationNo(int resumeEducationNo) {
		this.resumeEducationNo = resumeEducationNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getResumeEducation() {
		return resumeEducation;
	}
	public void setResumeEducation(String resumeEducation) {
		this.resumeEducation = resumeEducation;
	}
	public Date getResumeEducationStartDay() {
		return resumeEducationStartDay;
	}
	public void setResumeEducationStartDay(Date resumeEducationStartDay) {
		this.resumeEducationStartDay = resumeEducationStartDay;
	}
	public Date getResumeEducationEndDay() {
		return resumeEducationEndDay;
	}
	public void setResumeEducationEndDay(Date resumeEducationEndDay) {
		this.resumeEducationEndDay = resumeEducationEndDay;
	}
	public String getResumeEducationCenter() {
		return resumeEducationCenter;
	}
	public void setResumeEducationCenter(String resumeEducationCenter) {
		this.resumeEducationCenter = resumeEducationCenter;
	}
	
	
}
