package com.ppool.repository;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.History;
import com.ppool.dto.Project;
import com.ppool.dto.ResumeEducation;
import com.ppool.dto.ResumeLanguage;
import com.ppool.dto.ResumeLicense;
import com.ppool.dto.ResumeSchool;
import com.ppool.dto.User;

public interface UserSearchRepository {

	List<User>getUserSearchList();
	User getUserDetailView(int userNo);
	List<ResumeSchool> getResumeSchools(int userNo);
	List<ResumeEducation> getResumeEducations(int userNo);
	List<ResumeLicense> getResumeLicenses(int userNo);
	List<ResumeLanguage> getResumeLanguages(int userNo);
	List<History> getHistoryList(int userNo);
	String[] searchUsers(HashMap<String, Object> params);
}
