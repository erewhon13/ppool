package com.ppool.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ppool.dto.FavoriteProject;
import com.ppool.dto.Project;
import com.ppool.dto.ProjectComment;

public interface ProjectService {
	void projectRegister(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
	void projectDelete(int projectNo);
	void projectModify(Project project);
	List<ProjectComment> getCommentsByProjectNo(int projectNo);
	
	List<Project> searchProject(HashMap<String, Object> params);
	
	/////////////////북마크///////////////////////////////
	//북마크 등록
	void projectBookmarks(HashMap<String, Object> params);
	//북마크 목록
	List<Project> projectBookmarkList(int userNo);
	//북마크 중복 체크
	int getBookmarkCount(HashMap<String, Object> params);
	//북마크 삭제
	void projectBookmarkDelete(int projectNo);
	////////////////////////////////////////////////////////
	
	///////////////코멘트//////////////////////
	ProjectComment commentRegister(ProjectComment comment);
	void commentDelete(int commentNo);
	void commentUpdate(ProjectComment comment);
	ProjectComment commentReply(ProjectComment comment);
	////////////////////////////////////////////////////////
	
}
