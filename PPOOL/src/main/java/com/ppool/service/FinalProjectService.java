package com.ppool.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.Project;
import com.ppool.repository.ProjectRepository;

@Service
public class FinalProjectService {

	private ProjectRepository projectRepository;
	
	@Autowired
	@Qualifier("projectRepository")
	public void setProjectRepository(ProjectRepository projectRepository) {
		this.projectRepository = projectRepository;
	}
	
	public void registerProject(Project project){
		projectRepository.registerProject(project);
	}
}
