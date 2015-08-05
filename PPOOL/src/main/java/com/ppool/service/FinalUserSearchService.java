package com.ppool.service;

import java.util.HashMap;
import java.util.List;

import javax.swing.ListModel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.History;
import com.ppool.dto.Project;
import com.ppool.dto.ResumeEducation;
import com.ppool.dto.ResumeLanguage;
import com.ppool.dto.ResumeLicense;
import com.ppool.dto.ResumeSchool;
import com.ppool.dto.User;
import com.ppool.repository.UserSearchRepository;

@Service("userSearchService")
public class FinalUserSearchService implements UserSearchService {

	private UserSearchRepository userSearchRepository;

	@Autowired
	@Qualifier("userSearchRepository")
	public void setUserSearchRepository(
			UserSearchRepository userSearchRepository) {
		this.userSearchRepository = userSearchRepository;
	}

	@Override
	public List<User> getUserSearchList() {
		List<User> users = userSearchRepository.getUserSearchList();
		return users;
	}

	@Override
	public User getUserDetailView(int userNo) {
		User users = userSearchRepository.getUserDetailView(userNo);
		return users;
	}

	@Override
	public List<ResumeSchool> getResumeSchools(int userNo) {

		List<ResumeSchool> resumeSchool = userSearchRepository
				.getResumeSchools(userNo);
		return resumeSchool;
	}

	@Override
	public List<ResumeEducation> getResumeEducations(int userNo) {

		List<ResumeEducation> resumeEducation = userSearchRepository
				.getResumeEducations(userNo);
		return resumeEducation;
	}

	@Override
	public List<ResumeLicense> getResumeLicenses(int userNo) {

		List<ResumeLicense> resumeLicense = userSearchRepository
				.getResumeLicenses(userNo);
		return resumeLicense;
	}

	@Override
	public List<ResumeLanguage> getResumeLanguages(int userNo) {

		List<ResumeLanguage> resumeLanguage = userSearchRepository
				.getResumeLanguages(userNo);
		return resumeLanguage;
	}

	@Override
	public List<History> getHistoryList(int userNo) {

		List<History> history = userSearchRepository.getHistoryList(userNo);
		return history;
	}

	@Override
	public List<User> searchUsers(HashMap<String, Object> params) {
		List<User> users = userSearchRepository.searchUsers(params);
		return users;
	}
}
