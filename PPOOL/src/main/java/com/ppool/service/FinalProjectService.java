package com.ppool.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.Project;
import com.ppool.dto.ProjectComment;
import com.ppool.repository.ProjectRepository;
import com.ppool.util.ChangeWord;

@Service("projectService")
public class FinalProjectService implements ProjectService{

	private ProjectRepository projectRepository;
	//ChangeWord f = new ChangeWord();
	
	@Autowired
	@Qualifier("projectRepository")
	public void setProjectRepository(ProjectRepository projectRepository) {
		this.projectRepository = projectRepository;
	}
	
	@Override
	public void projectRegister(Project project) {
		projectRepository.projectRegister(project);
	}
	
	@Override
	public List<Project> getProjectList() {
		List<Project> projects = projectRepository.getProjectList();
		return projects;
	}

	@Override
	public Project getProjectByProjectNo(int projectNo) {
		Project project = projectRepository.getProjectByProjectNo(projectNo);
		return project;
	}

	@Override
	public void projectDelete(int projectNo) {
		projectRepository.projectDelete(projectNo);
	}

	@Override
	public void projectLocationRegister(HashMap<String, Object> params) {
		projectRepository.projectLocationRegister(params);
	}

	@Override
	public void projectSkillRegister(HashMap<String, Object> params) {
		projectRepository.projectSkillRegister(params);
	}

	@Override
	public void projectLocationDelete(int projectNo) {
		projectRepository.projectLocationDelete(projectNo);
	}

	@Override
	public void projectSkillDelete(int projectNo) {
		projectRepository.projectSkillDelete(projectNo);
	}

	@Override
	public void projectModify(Project project) {
		projectRepository.projectModify(project);
	}

	@Override
	public List<ProjectComment> getCommentsByProjectNo(int projectNo) {
		List<ProjectComment> comments = projectRepository.getCommentsByProjectNo(projectNo);
		return comments;
	}
	
}
