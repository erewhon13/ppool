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
		
		int projectNo = project.getProjectNo();
		
		if(project.getSkill() != null && project.getSkill().length > 0){
			for (String skillNo : project.getSkill() ) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("skillNo", skillNo);
				params.put("projectNo", projectNo);
				
				projectRepository.projectSkillRegister(params);
			}
		}
		if(project.getLocation() != null && project.getLocation().length > 0){
			for (String locationNo : project.getLocation() ) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("locationNo", locationNo);
				params.put("projectNo", projectNo);
				
				projectRepository.projectLocationRegister(params);
			}
		}
		
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
		projectRepository.projectLocationDelete(projectNo);
		projectRepository.projectSkillDelete(projectNo);
		projectRepository.projectDelete(projectNo);
	}

	@Override
	public void projectModify(Project project) {
		int projectNo = project.getProjectNo();
		
		projectRepository.projectLocationDelete(projectNo);
		projectRepository.projectSkillDelete(projectNo);
		projectRepository.projectModify(project);
		
		if(project.getSkill() != null && project.getSkill().length > 0){
			for (String skillNo : project.getSkill() ) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("skillNo", skillNo);
				params.put("projectNo", projectNo);
				
				projectRepository.projectSkillRegister(params);
			}
		}
		if(project.getLocation() != null && project.getLocation().length > 0){
			for (String locationNo : project.getLocation() ) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("locationNo", locationNo);
				params.put("projectNo", projectNo);
				
				projectRepository.projectLocationRegister(params);
			}
		}
	}

	@Override
	public List<ProjectComment> getCommentsByProjectNo(int projectNo) {
		List<ProjectComment> comments = projectRepository.getCommentsByProjectNo(projectNo);
		return comments;
	}
	
}
