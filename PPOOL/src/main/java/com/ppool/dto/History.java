package com.ppool.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class History implements Serializable {

	private int historyNo;
	private String historyTitle;
	private Date historyStartDay;
	private Date historyEndDay;
	private int historyStaff;
	private String historyWork;
	private String historyContent;
	private Date historyRegdate;
	private boolean historyOpened;
	private String historyService;
	private int userNo;
	
	private HistoryUploadFile file;
	
	////////jsp에서 Date를 보기 좋게 하기 위해 사용하는 필드///////
	
	private String startDay;
	private String endDay;
	private String regDate;	
	
	public String getStartDay() {
		return startDay;
	}
	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}
	public String getEndDay() {
		return endDay;
	}
	public void setEndDay(String endDay) {
		this.endDay = endDay;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	/////////////////////////////////////////////////
	
	
	public int getHistoryNo() {
		return historyNo;
	}
	public void setHistoryNo(int historyNo) {
		this.historyNo = historyNo;
	}
	public String getHistoryTitle() {
		return historyTitle;
	}
	public void setHistoryTitle(String historyTitle) {
		this.historyTitle = historyTitle;
	}
	public int getHistoryStaff() {
		return historyStaff;
	}
	public void setHistoryStaff(int historyStaff) {
		this.historyStaff = historyStaff;
	}
	public String getHistoryWork() {
		return historyWork;
	}
	public void setHistoryWork(String historyWork) {
		this.historyWork = historyWork;
	}
	public String getHistoryContent() {
		return historyContent;
	}
	public void setHistoryContent(String historyContent) {
		this.historyContent = historyContent;
	}
	public Date getHistoryRegdate() {
		return historyRegdate;
	}
	public void setHistoryRegdate(Date historyRegdate) {
		this.historyRegdate = historyRegdate;
	}
	public boolean isHistoryOpened() {
		return historyOpened;
	}
	public void setHistoryOpened(boolean historyOpened) {
		this.historyOpened = historyOpened;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	public Date getHistoryStartDay() {
		return historyStartDay;
	}
	public void setHistoryStartDay(Date historyStartDay) {
		this.historyStartDay = historyStartDay;
	}
	public Date getHistoryEndDay() {
		return historyEndDay;
	}
	public void setHistoryEndDay(Date historyEndDay) {
		this.historyEndDay = historyEndDay;
	}
	public String getHistoryService() {
		return historyService;
	}
	public void setHistoryService(String historyService) {
		this.historyService = historyService;
	}
	public HistoryUploadFile getFile() {
		return file;
	}
	public void setFile(HistoryUploadFile file) {
		this.file = file;
	}

}
