package com.ppool.mapper;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.JoinProject;

public interface JoinMapper {
	
	void insertJoin (JoinProject joinProject);
	void deleteJoin (HashMap<String, Object> params);
	List<JoinProject> getJoinList(int projectNo);

}
