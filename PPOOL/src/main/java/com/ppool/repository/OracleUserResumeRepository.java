package com.ppool.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.ResumeEducation;
import com.ppool.dto.ResumeIntroduction;
import com.ppool.dto.ResumeLanguage;
import com.ppool.dto.ResumeLicense;
import com.ppool.dto.ResumeSchool;
import com.ppool.mapper.UserResumeMapper;

@Repository("userResumeRepository")
public class OracleUserResumeRepository implements UserResumeRepository {
		
		
		private UserResumeMapper userResumeMapper;
		
		@Autowired
		@Qualifier("userResumeMapper")
		public void setUserResumeMapper(UserResumeMapper userResumeMapper){
			this.userResumeMapper = userResumeMapper;
		}

		//등록
		
		@Override
		public void resumeIntroductionRegister(ResumeIntroduction resumeIntroduction){
			userResumeMapper.resumeIntroductionRegister(resumeIntroduction);
		}

		@Override
		public void resumeSchoolRegister(ResumeSchool resumeschool) {
			userResumeMapper.resumeSchoolRegister(resumeschool);
		}
		
		@Override
		public void resumeEducationRegister(ResumeEducation resumeeducation) {
			userResumeMapper.resumeEducationRegister(resumeeducation);
		}
		
		@Override
		public void resumeLicenseRegister(ResumeLicense resumelicense) {
			userResumeMapper.resumeLicenseRegister(resumelicense);
		}
		@Override
		public void resumeLanguageRegister(ResumeLanguage resumelanguage) {
			userResumeMapper.resumeLanguageRegister(resumelanguage);
		}

		//보여주기 
		
		@Override
		public ResumeIntroduction getResumeIntroduction(int resumeIntroductionNo) {
				
			ResumeIntroduction resumeintroduction = userResumeMapper.getResumeIntroduction(resumeIntroductionNo);
			return resumeintroduction;
		}

		@Override
		public List<ResumeSchool> getResumeSchools(int userNo) {
			List<ResumeSchool> resumeSchool = userResumeMapper.getResumeSchools(userNo);
			return resumeSchool;
		}

		@Override
		public List<ResumeEducation> getResumeEducations(int userNo) {
			List<ResumeEducation> resumeEducation = userResumeMapper.getResumeEducations(userNo);
			return resumeEducation;
		}

		@Override
		public List<ResumeLicense> getResumeLicenses(int userNo) {
			List<ResumeLicense> resumeLicense = userResumeMapper.getResumeLicenses(userNo);
			return resumeLicense;
		}

		@Override
		public List<ResumeLanguage> getResumeLanguages(int userNo) {
			List<ResumeLanguage> resumeLanguage = userResumeMapper.getResumeLanguages(userNo);
			return resumeLanguage;
		}

		
		
		
		
//		@Override
//		public List<ResumeSchool> getResumeSchools(int userNo) {
//			List<ResumeSchool> resumeSchool = userResumeMapper.getResumeSchools();
//			return resumeSchool;
//		}

	
}
