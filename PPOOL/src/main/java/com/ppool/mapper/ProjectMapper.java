package com.ppool.mapper;

import java.util.List;

import com.ppool.dto.Project;

public interface ProjectMapper {
	void registerProject(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
}
