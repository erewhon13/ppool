package com.ppool.repository;

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
	public void registerProject(Project project) {
		projectMapper.registerProject(project);
	}

}
