package com.ppool.mapper;

import java.util.List;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;
import com.ppool.dto.Project;

public interface ProjectMapper {
	void projectRegister(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
	
		
	
	
}
