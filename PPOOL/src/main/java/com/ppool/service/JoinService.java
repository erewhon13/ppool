package com.ppool.service;

import java.util.List;

import com.ppool.dto.JoinProject;

public interface JoinService {

	void insertJoin (JoinProject joinProject);
	void deleteJoin (int joinNo);
	List<JoinProject> getJoinList(int projectNo);
	
}
