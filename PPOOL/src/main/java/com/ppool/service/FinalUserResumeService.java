package com.ppool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.UserResume;
import com.ppool.repository.UserResumeRepository;

@Service("userResumeService")
public class FinalUserResumeService implements UserResumeService{

	private UserResumeRepository userResumeRepository;
	
	@Autowired
	@Qualifier("userResumeRepository")
	public void setUserResumeRepository(UserResumeRepository userResumeRepository){
		this.userResumeRepository = userResumeRepository;
	}
	
	
	@Override
	public void userRegister(UserResume resume) {
		userResumeRepository.userRegister(resume);
		
	}

	@Override
	public List<UserResume> getUserResumeList() {
		List<UserResume> userResumes = userResumeRepository.getUserResumeList();
		return userResumes;
	}
}
