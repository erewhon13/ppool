package com.ppool.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class History implements Serializable {

	private int historyNo;
	private String historyTitle;
	private Date historyPeriod;
	private int historyStaff;
	private String historyWork;
	private String historyContent;
	private Date historyRegdate;
	private boolean historyOpened;
	private int userNo;
	
	private List<HistoryUploadFile> files;
	
	
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
	public Date getHistoryPeriod() {
		return historyPeriod;
	}
	public void setHistoryPeriod(Date historyPeriod) {
		this.historyPeriod = historyPeriod;
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
	public List<HistoryUploadFile> getFiles() {
		return files;
	}
	public void setFiles(List<HistoryUploadFile> files) {
		this.files = files;
	}
	
	
	
	
	
	
}
