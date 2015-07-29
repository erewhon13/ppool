package com.ppool.mapper;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;
import com.ppool.dto.Project;

public interface ProjectMapper {
	void projectRegister(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
	void projectDelete(int projectNo);
	void projectLocationRegister(HashMap<String, Object> params);
	void projectSkillRegister(HashMap<String, Object> params);
	void projectLocationDelete(int projectNo);
	void projectSkillDelete(int projectNo);
	void projectModify(Project project);
}
