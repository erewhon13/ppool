package com.ppool.dto;

import java.util.Date;
import java.util.List;

public class User {
	private int userNo;
	private String userEmail;
	private String userPasswd;
	private String userName;
	private boolean userStatus;
	private String userPhone;
	private Date userBirth;
	private boolean userGender;
	private String userAddress;
	private boolean userExperience;
	private String userAcademic;
	private String userMajor;
	private String userGrade;
	private int userWarningCount;
	private int userOpenLevel;
	private boolean userPictureExist;
	private String userPictureSavedName;
	private String stampRegisterDay;

	///1:M관계 형성 필드
	private String[] userSkill;
	private String[] userLocation;
	
	private List<String> locationNames;
	private List<String> skillNames;
	
	

	public List<String> getSkillNames() {
		return skillNames;
	}

	public void setSkillNames(List<String> skillNames) {
		this.skillNames = skillNames;
	}

	public List<String> getLocationNames() {
		return locationNames;
	}

	public void setLocationNames(List<String> locationNames) {
		this.locationNames = locationNames;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPasswd() {
		return userPasswd;
	}

	public void setUserPasswd(String userPasswd) {
		this.userPasswd = userPasswd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public boolean isUserStatus() {
		return userStatus;
	}

	public void setUserStatus(boolean userStatus) {
		this.userStatus = userStatus;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public Date getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}

	public boolean isUserGender() {
		return userGender;
	}

	public void setUserGender(boolean userGender) {
		this.userGender = userGender;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public boolean isUserExperience() {
		return userExperience;
	}

	public void setUserExperience(boolean userExperience) {
		this.userExperience = userExperience;
	}

	public String getUserAcademic() {
		return userAcademic;
	}

	public void setUserAcademic(String userAcademic) {
		this.userAcademic = userAcademic;
	}

	public String getUserMajor() {
		return userMajor;
	}

	public void setUserMajor(String userMajor) {
		this.userMajor = userMajor;
	}

	public String getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}

	public int getUserWarningCount() {
		return userWarningCount;
	}

	public void setUserWarningCount(int userWarningCount) {
		this.userWarningCount = userWarningCount;
	}

	public int getUserOpenLevel() {
		return userOpenLevel;
	}

	public void setUserOpenLevel(int userOpenLevel) {
		this.userOpenLevel = userOpenLevel;
	}

	public boolean isUserPictureExist() {
		return userPictureExist;
	}

	public void setUserPictureExist(boolean userPictureExist) {
		this.userPictureExist = userPictureExist;
	}

	public String getUserPictureSavedName() {
		return userPictureSavedName;
	}

	public void setUserPictureSavedName(String userPictureSavedName) {
		this.userPictureSavedName = userPictureSavedName;
	}

	public String getStampRegisterDay() {
		return stampRegisterDay;
	}

	public void setStampRegisterDay(String stampRegisterDay) {
		this.stampRegisterDay = stampRegisterDay;
	}

	public String[] getUserSkill() {
		return userSkill;
	}

	public void setUserSkill(String[] userSkill) {
		this.userSkill = userSkill;
	}

	public String[] getUserLocation() {
		return userLocation;
	}

	public void setUserLocation(String[] userLocation) {
		this.userLocation = userLocation;
	}
}
