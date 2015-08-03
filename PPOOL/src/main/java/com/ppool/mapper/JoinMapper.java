package com.ppool.mapper;

import java.util.List;

import com.ppool.dto.JoinProject;

public interface JoinMapper {
	
	void insertJoin (JoinProject joinProject);
	void deleteJoin (int joinNo);
	List<JoinProject> getJoinList(int projectNo);

}
