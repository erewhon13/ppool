package com.ppool.dto;

import java.util.Date;

public class Report {
	
	private int reportNo;
	private Date reportDay;
	private String reportContent;
	private int projectNo;
	private int userNo;
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public Date getReportDay() {
		return reportDay;
	}
	public void setReportDay(Date reportDay) {
		this.reportDay = reportDay;
	}
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
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
	
	
	

}
