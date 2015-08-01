package com.ppool.dto;

import java.util.Date;

public class ResumeLicense {

	private int userNo;
	private int resumeLicenseNo;
	private String resumeLicense;
	private String resumeLicenseCenter;
	private Date resumeLicenseDay;
	
	
	public int getResumeLicenseNo() {
		return resumeLicenseNo;
	}
	public void setResumeLicenseNo(int resumeLicenseNo) {
		this.resumeLicenseNo = resumeLicenseNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getResumeLicense() {
		return resumeLicense;
	}
	public void setResumeLicense(String resumeLicense) {
		this.resumeLicense = resumeLicense;
	}
	public String getResumeLicenseCenter() {
		return resumeLicenseCenter;
	}
	public void setResumeLicenseCenter(String resumeLicenseCenter) {
		this.resumeLicenseCenter = resumeLicenseCenter;
	}
	public Date getResumeLicenseDay() {
		return resumeLicenseDay;
	}
	public void setResumeLicenseDay(Date resumeLicenseDay) {
		this.resumeLicenseDay = resumeLicenseDay;
	}
	
}
