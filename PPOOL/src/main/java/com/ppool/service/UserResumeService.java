package com.ppool.service;

import java.util.List;

import com.ppool.dto.UserResume;

public interface UserResumeService {

	void userRegister(UserResume resume);

	UserResume getUserResume(int userNo);
	
}
