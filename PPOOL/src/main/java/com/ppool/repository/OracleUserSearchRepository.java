package com.ppool.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.History;
import com.ppool.dto.Project;
import com.ppool.dto.ResumeEducation;
import com.ppool.dto.ResumeLanguage;
import com.ppool.dto.ResumeLicense;
import com.ppool.dto.ResumeSchool;
import com.ppool.dto.User;
import com.ppool.mapper.UserSearchMapper;

@Repository("userSearchRepository")
public class OracleUserSearchRepository implements UserSearchRepository {
		
		
		private UserSearchMapper userSearchMapper;
		
		@Autowired
		@Qualifier("userSearchMapper")
		public void setUserSearchMapper(UserSearchMapper userSearchMapper){
			this.userSearchMapper  = userSearchMapper;
		}
		

		@Override
		public List<User> getUserSearchList() {
			List<User> users = userSearchMapper.getUserSearchList();
			return users;
			
		}


		@Override
		public User getUserDetailView(int userNo) {

			User users = userSearchMapper.getUserDetailView(userNo);
			return users;
		}


		@Override
		public List<ResumeSchool> getResumeSchools(int userNo) {
			
			List<ResumeSchool> resumeSchool = userSearchMapper.getResumeSchools(userNo);
			return resumeSchool;
		}


		@Override
		public List<ResumeEducation> getResumeEducations(int userNo) {
			
			List<ResumeEducation> resumeEducation = userSearchMapper.getResumeEducations(userNo);
			return resumeEducation;
		}


		@Override
		public List<ResumeLicense> getResumeLicenses(int userNo) {

			List<ResumeLicense> resumeLicense = userSearchMapper.getResumeLicenses(userNo);
			return resumeLicense;
		}


		@Override
		public List<ResumeLanguage> getResumeLanguages(int userNo) {

			List<ResumeLanguage> resumeLanguage = userSearchMapper.getResumeLanguages(userNo);
			return resumeLanguage;
		}

		@Override
		public List<History> getHistoryList(int userNo) {

			List<History> history = userSearchMapper.getHistoryList(userNo);
			return history;
		}


	

		
		
	
	
	
	
}
