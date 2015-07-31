package com.ppool.dto;

import java.util.Date;

public class ResumeSchool {

	private int userNo;
	private int resumeSchoolNo;
	private String resumeUserSchool;
	private String resumeUserMajor;
	private Date resumeMajorStartDay;
	private Date resumeMajorEndDay;
	
	
	
	public int getResumeSchoolNo() {
		return resumeSchoolNo;
	}
	public void setResumeSchoolNo(int resumeSchoolNo) {
		this.resumeSchoolNo = resumeSchoolNo;
	}
	public String getResumeUserSchool() {
		return resumeUserSchool;
	}
	public void setResumeUserSchool(String resumeUserSchool) {
		this.resumeUserSchool = resumeUserSchool;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getResumeUserMajor() {
		return resumeUserMajor;
	}
	public void setResumeUserMajor(String resumeUserMajor) {
		this.resumeUserMajor = resumeUserMajor;
	}
	public Date getResumeMajorStartDay() {
		return resumeMajorStartDay;
	}
	public void setResumeMajorStartDay(Date resumeMajorStartDay) {
		this.resumeMajorStartDay = resumeMajorStartDay;
	}
	public Date getResumeMajorEndDay() {
		return resumeMajorEndDay;
	}
	public void setResumeMajorEndDay(Date resumeMajorEndDay) {
		this.resumeMajorEndDay = resumeMajorEndDay;
	}
	
}
