package com.ppool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.ResumeEducation;
import com.ppool.dto.ResumeIntroduction;
import com.ppool.dto.ResumeLanguage;
import com.ppool.dto.ResumeLicense;
import com.ppool.dto.ResumeSchool;
import com.ppool.repository.UserResumeRepository;

@Service("userResumeService")
public class FinalUserResumeService implements UserResumeService{

	private UserResumeRepository userResumeRepository;
	
	@Autowired
	@Qualifier("userResumeRepository")
	public void setUserResumeRepository(UserResumeRepository userResumeRepository){
		this.userResumeRepository = userResumeRepository;
	}

	//등록 
	@Override
	public void resumeSchoolRegister(ResumeSchool resumeschool) {
			userResumeRepository.resumeSchoolRegister(resumeschool);
	}
	@Override
	public void resumeIntroductionRegister(ResumeIntroduction resumeIntroduction){
		userResumeRepository.resumeIntroductionRegister(resumeIntroduction);
	}
	@Override
	public void resumeEducationRegister(ResumeEducation resumeeducation) {
			userResumeRepository.resumeEducationRegister(resumeeducation);
	}
	@Override
	public void resumeLicenseRegister(ResumeLicense resumelicense) {
			userResumeRepository.resumeLicenseRegister(resumelicense);
	}
	@Override
	public void resumeLanguageRegister(ResumeLanguage resumelanguage) {
			userResumeRepository.resumeLanguageRegister(resumelanguage);
	}

	//보여주기 
	@Override
	public ResumeIntroduction getResumeIntroduction(int resumeIntroductionNo) {
		
		ResumeIntroduction resumeintroduction = userResumeRepository.getResumeIntroduction(resumeIntroductionNo);
		return resumeintroduction;
	}

	@Override
	public List<ResumeSchool> getResumeSchools() {
		List<ResumeSchool> resumeSchool = userResumeRepository.getResumeSchools();
		return resumeSchool;
	}
}
