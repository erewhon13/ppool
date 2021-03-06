package com.ppool.dto;

import java.util.Date;

public class ProjectComment {
	private int commentNo;
	private int projectNo;
	private int userNo;
	private String commentContent;
	private int commentGroupNo;
	private int commentStep;
	private int commentDepth;
	private int commentClosed;
	private Date commentRegisterDay;
	
	private int projectUserNo;
	
public int getProjectUserNo() {
		return projectUserNo;
	}
	public void setProjectUserNo(int projectUserNo) {
		this.projectUserNo = projectUserNo;
	}
	//////////////////////////////////////////////////////////////
	private String userName;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
//////////////////////////////////////////////////////////////
	
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
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
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public int getCommentGroupNo() {
		return commentGroupNo;
	}
	public void setCommentGroupNo(int commentGroupNo) {
		this.commentGroupNo = commentGroupNo;
	}
	public int getCommentStep() {
		return commentStep;
	}
	public void setCommentStep(int commentStep) {
		this.commentStep = commentStep;
	}
	public int getCommentDepth() {
		return commentDepth;
	}
	public void setCommentDepth(int commentDepth) {
		this.commentDepth = commentDepth;
	}
	public int getCommentClosed() {
		return commentClosed;
	}
	public void setCommentClosed(int commentClosed) {
		this.commentClosed = commentClosed;
	}
	public Date getCommentRegisterDay() {
		return commentRegisterDay;
	}
	public void setCommentRegisterDay(Date commentRegisterDay) {
		this.commentRegisterDay = commentRegisterDay;
	}
	
	
	
}
