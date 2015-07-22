package com.ppool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.Project;
import com.ppool.repository.ProjectRepository;

@Service("projectService")
public class FinalProjectService implements ProjectService{

	private ProjectRepository projectRepository;
	
	@Autowired
	@Qualifier("projectRepository")
	public void setProjectRepository(ProjectRepository projectRepository) {
		this.projectRepository = projectRepository;
	}
	
	@Override
	public void registerProject(Project project) {
		projectRepository.registerProject(project);
	}

	@Override
	public List<Project> getProjectList() {
		List<Project> projects = projectRepository.getProjectList();
		return projects;
	}

	
}
