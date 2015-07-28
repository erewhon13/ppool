package com.ppool.repository;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.Project;

public interface ProjectRepository{
	void projectRegister(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
	void projectDelete(int projectNo);
	void projectLocationRegister(HashMap<String, Object> params);
	void projectSkillRegister(HashMap<String, Object> params);
}
