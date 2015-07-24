package com.ppool.dto;

import java.util.Date;

public class Notification {

	private int notificationNo;
	private String notificationTitle;
	private String notificationContent;
	private Date notificationRegisterDay;
	private int adminNo;

	// ///////////////뷰에서 Date를 보기 좋게 하기위해 사용하는 필드///////////////////
	
	private String stampRegisterDay;

	public String getStampRegisterDay() {
		return stampRegisterDay;
	}

	public void setStampRegisterDay(String stampRegisterDay) {
		this.stampRegisterDay = stampRegisterDay;
	}

	public int getNotificationNo() {
		return notificationNo;
	}

	public void setNotificationNo(int notificationNo) {
		this.notificationNo = notificationNo;
	}

	public String getNotificationTitle() {
		return notificationTitle;
	}

	public void setNotificationTitle(String notificationTitle) {
		this.notificationTitle = notificationTitle;
	}

	public String getNotificationContent() {
		return notificationContent;
	}

	public void setNotificationContent(String notificationContent) {
		this.notificationContent = notificationContent;
	}

	public Date getNotificationRegisterDay() {
		return notificationRegisterDay;
	}

	public void setNotificationRegisterDay(Date notificationRegisterDay) {
		this.notificationRegisterDay = notificationRegisterDay;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

}
