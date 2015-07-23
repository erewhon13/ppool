package com.ppool.service;

import java.util.List;

import com.ppool.dto.Project;

public interface ProjectService {
	void registerProject(Project project);
	List<Project> getProjectList();
}
