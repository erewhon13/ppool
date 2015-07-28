package com.ppool.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.User;
import com.ppool.dto.UserResume;
import com.ppool.mapper.UserResumeMapper;
import com.ppool.mapper.UserSearchMapper;

@Repository("userResumeRepository")
public class OracleUserResumeRepository implements UserResumeRepository {
		
		
		private UserResumeMapper userResumeMapper;
		
		@Autowired
		@Qualifier("userResumeMapper")
		public void setUserResumeMapper(UserResumeMapper userResumeMapper){
			this.userResumeMapper = userResumeMapper;
		}

		@Override
		public void userRegister(UserResume resume) {
			userResumeMapper.resumeRegister(resume);
			
		}
	
}
