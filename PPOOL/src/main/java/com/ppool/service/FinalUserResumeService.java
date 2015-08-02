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
	public ResumeIntroduction getResumeIntroductions(int userNo) {
		
		ResumeIntroduction resumeintroduction = userResumeRepository.getResumeIntroductions(userNo);
		return resumeintroduction;
	}

	@Override
	public List<ResumeSchool> getResumeSchools(int userNo) {
		List<ResumeSchool> resumeSchool = userResumeRepository.getResumeSchools(userNo);
		return resumeSchool;
	}

	@Override
	public List<ResumeEducation> getResumeEducations(int userNo) {

		List<ResumeEducation> resumeEducation = userResumeRepository.getResumeEducations(userNo);
		return resumeEducation;
	}

	@Override
	public List<ResumeLicense> getResumeLicenses(int userNo) {

		List<ResumeLicense> resumeLicense = userResumeRepository.getResumeLicenses(userNo);
		return resumeLicense;
	}

	@Override
	public List<ResumeLanguage> getResumeLanguages(int userNo) {
		
		List<ResumeLanguage> resumeLanguage = userResumeRepository.getResumeLanguages(userNo);
		return resumeLanguage;
	}

	@Override
	public void deleteResumeSchool(int resumeSchoolNo) {
		userResumeRepository.deleteResumeSchool(resumeSchoolNo);
			
	}

	@Override
	public void updateResumeSchool(ResumeSchool resumeSchool) {
		userResumeRepository.updateResumeSchool(resumeSchool);
		
	}

	
	
	
	
	
}
