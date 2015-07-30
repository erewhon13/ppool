package com.ppool.repository;

import java.util.List;

import com.ppool.dto.UserResume;


public interface UserResumeRepository {

	void userRegister(UserResume resume);

	List<UserResume> getUserResumeList();
	
}
