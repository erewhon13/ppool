package com.ppool.repository;

import java.util.List;

import com.ppool.dto.Project;

public interface ProjectRepository{
	void registerProject(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
}
