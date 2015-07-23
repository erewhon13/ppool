package com.ppool.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
	
	SimpleDateFormat f = new SimpleDateFormat("yy년 MM월 dd일");
	
	@Override
	public List<Project> getProjectList() {
		List<Project> projects = projectRepository.getProjectList();
		
		for (Project project : projects) {
			project.setStampStart(f.format(project.getProjectStartDay()));
			project.setStampEnd(f.format(project.getProjectEndDay()));
			
			Calendar cal = Calendar.getInstance();
			long nowDay = cal.getTimeInMillis();
			
			int year = project.getProjectExpire().getYear();
			int month = project.getProjectExpire().getMonth();
			int date = project.getProjectExpire().getDate();
			
			cal.set(year+1900,month,date);//목표일
			long eventDay = cal.getTimeInMillis();
			int y =(int)((eventDay - nowDay) / (24 * 60 * 60 * 1000));
			project.setProjectStatus(y);
			
			project.setStampExpire(f.format(project.getProjectExpire()));
			
		}
		
		return projects;
	}

	@Override
	public Project getProjectByProjectNo(int projectNo) {
		Project project = projectRepository.getProjectByProjectNo(projectNo);
		return project;
	}

	
}
