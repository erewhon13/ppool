package com.ppool.repository;

import com.ppool.dto.ResumeEducation;
import com.ppool.dto.ResumeIntroduction;
import com.ppool.dto.ResumeLanguage;
import com.ppool.dto.ResumeLicense;
import com.ppool.dto.ResumeSchool;

public interface UserResumeRepository {

	//등록
	void resumeSchoolRegister(ResumeSchool resumeschool);
	void resumeIntroductionRegister(ResumeIntroduction resumeintroduction);
	void resumeEducationRegister(ResumeEducation resumeeducation);	
	void resumeLicenseRegister(ResumeLicense resumelicense);
	void resumeLanguageRegister(ResumeLanguage resumelanguage);

	//보여주기 
	ResumeIntroduction getResumeIntroduction(int resumeIntroductionNo);
	
	
}
