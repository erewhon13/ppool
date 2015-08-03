package com.ppool.repository;

import java.util.List;

import com.ppool.dto.JoinProject;

public interface JoinRepository {
	
	void insertJoin (JoinProject joinProject);
	void deleteJoin (int joinNo);
	List<JoinProject> getJoinList(int projectNo);

}
