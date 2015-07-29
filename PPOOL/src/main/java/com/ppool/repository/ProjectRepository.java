package com.ppool.repository;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.Project;
import com.ppool.dto.ProjectComment;

public interface ProjectRepository{
	void projectRegister(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
	void projectDelete(int projectNo);
	void projectLocationRegister(HashMap<String, Object> params);
	void projectSkillRegister(HashMap<String, Object> params);
	void projectLocationDelete(int projectNo);
	void projectSkillDelete(int projectNo);
	void projectModify(Project project);
	List<ProjectComment> getCommentsByProjectNo(int projectNo);
}
