package com.ppool.service;

import java.util.List;

import com.ppool.dto.ResumeEducation;
import com.ppool.dto.ResumeIntroduction;
import com.ppool.dto.ResumeLanguage;
import com.ppool.dto.ResumeLicense;
import com.ppool.dto.ResumeSchool;

public interface UserResumeService {

	//등록
	void resumeSchoolRegister(ResumeSchool resumeschool);
	void resumeIntroductionRegister(ResumeIntroduction resumeIntroduction);
	void resumeEducationRegister(ResumeEducation resumeeducation);
	void resumeLicenseRegister(ResumeLicense resumelicense);
	void resumeLanguageRegister(ResumeLanguage resumelanguage);
	
	//보여주기 
	ResumeIntroduction getResumeIntroduction(int resumeIntroductionNo);
	List<ResumeSchool>getResumeSchools();
	
}
