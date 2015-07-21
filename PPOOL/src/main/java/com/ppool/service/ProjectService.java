package com.ppool.service;

import org.springframework.stereotype.Service;

import com.ppool.dto.Project;

@Service
public interface ProjectService {
	public void registerProject(Project project);
}
