package com.ppool.service;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.Project;
import com.ppool.dto.ProjectComment;

public interface ProjectService {
	void projectRegister(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
	void projectDelete(int projectNo);
	void projectModify(Project project);
	List<ProjectComment> getCommentsByProjectNo(int projectNo);
	void commentRegister(ProjectComment comment);
	ProjectComment getCommentsByCommentNo(int commentNo);
}
