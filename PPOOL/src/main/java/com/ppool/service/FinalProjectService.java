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
		
		for (Project project : projects) {
			project.setStampStart(ChangeWord.dateToString(project.getProjectStartDay()));
			project.setStampEnd(ChangeWord.dateToString(project.getProjectEndDay()));
			
			Calendar cal = Calendar.getInstance();
			long nowDay = cal.getTimeInMillis();
			
			int year = project.getProjectExpire().getYear();
			int month = project.getProjectExpire().getMonth();
			int date = project.getProjectExpire().getDate();
			
			cal.set(year+1900,month,date);//목표일
			long eventDay = cal.getTimeInMillis();
			int y =(int)((eventDay - nowDay) / (24 * 60 * 60 * 1000));
			project.setProjectStatus(y);
			
			project.setStampExpire(ChangeWord.dateToString(project.getProjectExpire()));
			
		}
		
		return projects;
	}

	@Override
	public Project getProjectByProjectNo(int projectNo) {
		Project project = projectRepository.getProjectByProjectNo(projectNo);
		project.setStampStart(ChangeWord.dateToString(project.getProjectStartDay()));
		project.setStampEnd(ChangeWord.dateToString(project.getProjectEndDay()));
		project.setStampExpire(ChangeWord.dateToString(project.getProjectExpire()));
		project.setStampRegisterDay(ChangeWord.dateToString(project.getProjectRegisterDay()));
		return project;
	}

	@Override
	public void projectDelete(int projectNo) {
		projectRepository.projectDelete(projectNo);
		
	}
	
}
