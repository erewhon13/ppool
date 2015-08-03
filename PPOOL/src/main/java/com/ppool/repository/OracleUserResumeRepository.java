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

		public ResumeIntroduction getResumeIntroductions(int userNo) {
			
			ResumeIntroduction resumeintroduction = userResumeMapper.getResumeIntroductions(userNo);
			return resumeintroduction;
		}
		//삭제 
		@Override
		public void deleteResumeSchool(int resumeSchoolNo) {
			userResumeMapper.deleteResumeSchool(resumeSchoolNo);
		}

		@Override
		public void deleteResumeEducation(int resumeEducationNo) {
			userResumeMapper.deleteResumeEducation(resumeEducationNo);
		}

		@Override
		public void deleteResumeLicense(int resumeLicenseNo) {
			userResumeMapper.deleteResumeLicense(resumeLicenseNo);
		}

		@Override
		public void deleteResumeLanguage(int resumeLanguageNo) {
			userResumeMapper.deleteResumeLanguage(resumeLanguageNo);
		}
		
		
		
		
		
		//수정
		@Override
		public void updateResumeSchool(ResumeSchool resumeSchool) {
			userResumeMapper.updateResumeSchool(resumeSchool);
		}

		@Override
		public void updateResumeEducation(ResumeEducation resumeEducation) {
			userResumeMapper.updateResumeEducation(resumeEducation);
			
		}

		@Override
		public void updateResumeLicense(ResumeLicense resumeLicense) {
			userResumeMapper.updateResumeLicense(resumeLicense);
			
		}

		@Override
		public void updateResumeLanguage(ResumeLanguage resumeLanguage) {
			userResumeMapper.updateResumeLanguage(resumeLanguage);
			
		}

		@Override
		public void updateResumeIntroduction(ResumeIntroduction resumeIntroduction) {
			userResumeMapper.updateResumeIntroduction(resumeIntroduction);
		}
		
}
