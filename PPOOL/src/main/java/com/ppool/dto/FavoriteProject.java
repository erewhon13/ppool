package com.ppool.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;



public class FavoriteProject {
	
	
	private int projectNo;
	private int favoriteNo;
	private int userNo;

	

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getFavoriteNo() {
		return favoriteNo;
	}

	public void setFavoriteNo(int favoriteNo) {
		this.favoriteNo = favoriteNo;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

}
