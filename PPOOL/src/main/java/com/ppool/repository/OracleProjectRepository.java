package com.ppool.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.Project;
import com.ppool.dto.ProjectComment;
import com.ppool.mapper.ProjectMapper;

@Repository("projectRepository")
public class OracleProjectRepository implements ProjectRepository{

	private ProjectMapper projectMapper;
	
	@Autowired
	@Qualifier("projectMapper")
	public void setProjectMapper(ProjectMapper projectMapper) {
		this.projectMapper = projectMapper;
	}
	
	@Override
	public void projectRegister(Project project) {
		projectMapper.projectRegister(project);
	}

	@Override
	public List<Project> getProjectList() {
		List<Project> projects = projectMapper.getProjectList();
		return projects;
	}

	@Override
	public Project getProjectByProjectNo(int projectNo) {
		Project project = projectMapper.getProjectByProjectNo(projectNo);
		return project;
	}

	@Override
	public void projectDelete(int projectNo) {
		projectMapper.projectDelete(projectNo);
	}

	@Override
	public void projectLocationRegister(HashMap<String, Object> params) {
		projectMapper.projectLocationRegister(params);
	}

	@Override
	public void projectSkillRegister(HashMap<String, Object> params) {
		projectMapper.projectSkillRegister(params);
	}

	@Override
	public void projectLocationDelete(int projectNo) {
		projectMapper.projectLocationDelete(projectNo);
		
	}

	@Override
	public void projectSkillDelete(int projectNo) {
		projectMapper.projectSkillDelete(projectNo);
		
	}

	@Override
	public void projectModify(Project project) {
		projectMapper.projectModify(project);
	}

	@Override
	public List<ProjectComment> getCommentsByProjectNo(int projectNo) {
		List<ProjectComment> comments = projectMapper.getCommentsByProjectNo(projectNo);
		return comments;
	}

}
