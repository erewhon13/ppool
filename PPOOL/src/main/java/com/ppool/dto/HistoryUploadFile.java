package com.ppool.dto;

import java.io.Serializable;

public class HistoryUploadFile implements Serializable {
 
	private int uploadFileNo;
	private int historyNo;
	private String uploadUserFileName;
	private String uploadSavedFileName;
	
		
	
	public int getUploadFileNo() {
		return uploadFileNo;
	}
	public void setUploadFileNo(int uploadFileNo) {
		this.uploadFileNo = uploadFileNo;
	}
	public int getHistoryNo() {
		return historyNo;
	}
	public void setHistoryNo(int historyNo) {
		this.historyNo = historyNo;
	}
	public String getUploadUserFileName() {
		return uploadUserFileName;
	}
	public void setUploadUserFileName(String uploadUserFileName) {
		this.uploadUserFileName = uploadUserFileName;
	}
	public String getUploadSavedFileName() {
		return uploadSavedFileName;
	}
	public void setUploadSavedFileName(String uploadSavedFileName) {
		this.uploadSavedFileName = uploadSavedFileName;
	}
	
	
	
}
