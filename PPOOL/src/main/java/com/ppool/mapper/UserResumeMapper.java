package com.ppool.mapper;

import java.util.List;

import com.ppool.dto.UserResume;

public interface UserResumeMapper {
		
	void resumeRegister(UserResume resume);

	UserResume getUserResume(int userNo);
		
	
}
