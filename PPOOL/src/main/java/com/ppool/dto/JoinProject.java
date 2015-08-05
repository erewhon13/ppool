package com.ppool.dto;

public class JoinProject {
	
	private int joinNo;
	private int userNo;
	private int projectNo;
	private boolean joinSelected;
	
	public int getJoinNo() {
		return joinNo;
	}
	public void setJoinNo(int joinNo) {
		this.joinNo = joinNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}
	public boolean isJoinSelected() {
		return joinSelected;
	}
	public void setJoinSelected(boolean joinSelected) {
		this.joinSelected = joinSelected;
	}
	
	
	////////////////////// projectdetailview에서 뿌려줄 user 정보
	
	private User user;
//	private String userEmail;
//	private String userName;
//	private boolean userGender;
//	private boolean userExperience;
//
//	public String getUserEmail() {
//		return userEmail;
//	}
//	public void setUserEmail(String userEmail) {
//		this.userEmail = userEmail;
//	}
//	public String getUserName() {
//		return userName;
//	}
//	public void setUserName(String userName) {
//		this.userName = userName;
//	}
//	public boolean isUserGender() {
//		return userGender;
//	}
//	public void setUserGender(boolean userGender) {
//		this.userGender = userGender;
//	}
//	public boolean isUserExperience() {
//		return userExperience;
//	}
//	public void setUserExperience(boolean userExperience) {
//		this.userExperience = userExperience;
//	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	
	
	

}
