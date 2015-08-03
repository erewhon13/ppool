package com.ppool.mapper;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.FavoriteProject;
import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;
import com.ppool.dto.Project;
import com.ppool.dto.ProjectComment;

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
	List<ProjectComment> getCommentsByProjectNo(int projectNo);
	void commentRegister(ProjectComment comment);
	ProjectComment getCommentsByCommentNo(int commentNo);
	//북마크 등록
	void projectBookmarks(HashMap<String, Object> params);
	//북마크 목록
	List<Project> projectBookmarkList(int userNo);
	//북마크 중복체크
	int getBookmarkCount(HashMap<String, Object> params);
	//북마크 삭제
	void projectBookmarkDelete(int projectNo);
	
}
