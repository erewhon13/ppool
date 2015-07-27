package com.ppool.service;

import java.util.List;

import com.ppool.dto.Project;

public interface ProjectService {
	void projectRegister(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
	void projectDelete(int projectNo);
}
