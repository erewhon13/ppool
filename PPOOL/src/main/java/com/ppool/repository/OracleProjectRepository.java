package com.ppool.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.Project;
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

}
