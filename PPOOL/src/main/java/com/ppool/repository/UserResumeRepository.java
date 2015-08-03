package com.ppool.repository;

import java.util.List;

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
	ResumeIntroduction getResumeIntroductions(int userNo);
	List<ResumeSchool>getResumeSchools(int userNo);
	List<ResumeEducation> getResumeEducations(int userNo);
	List<ResumeLicense> getResumeLicenses(int userNo);
	List<ResumeLanguage> getResumeLanguages(int userNo);

	//삭제 
	void deleteResumeSchool(int resumeSchoolNo);
	void deleteResumeEducation(int resumeEducationNo);
	void deleteResumeLicense(int resumeLicenseNo);
	void deleteResumeLanguage(int resumeLanguageNo);
	
	//수정 
	void updateResumeSchool(ResumeSchool resumeSchool);
	void updateResumeEducation(ResumeEducation resumeEducation);
	void updateResumeLicense(ResumeLicense resumeLicense);
	void updateResumeLanguage(ResumeLanguage resumeLanguage);
	void updateResumeIntroduction(ResumeIntroduction resumeIntroduction);
}
