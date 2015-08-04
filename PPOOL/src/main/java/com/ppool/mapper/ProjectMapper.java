package com.ppool.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ppool.dto.FavoriteProject;
import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;
import com.ppool.dto.Project;
import com.ppool.dto.ProjectComment;
import com.ppool.dto.SkillList;

public interface ProjectMapper {
	///////////////////////////프로젝트///////////////////////////////
	void projectRegister(Project project);
	List<Project> getProjectList();
	Project getProjectByProjectNo(int projectNo);
	void projectDelete(int projectNo);
	void projectLocationRegister(HashMap<String, Object> params);
	void projectSkillRegister(HashMap<String, Object> params);
	void projectLocationDelete(int projectNo);
	void projectSkillDelete(int projectNo);
	void projectModify(Project project);
	int[] searchProject(HashMap<String, Object> params);
	int[] searchProject2(int[] skill);
	int[] searchProject3(List<HashMap<String, Object>> list);
	void searchProject4(List<ArrayList<String>> ll);
	///////////////////////////북마크///////////////////////////////
	//북마크 등록
	void projectBookmarks(HashMap<String, Object> params);
	//북마크 목록
	List<Project> projectBookmarkList(int userNo);
	//북마크 중복 체크
	int getBookmarkCount(HashMap<String, Object> params);
	//북마크 삭제
	void projectBookmarkDelete(int projectNo);
	////////////////////////////////////////////////////////
	
	////////////////////////////코멘트////////////////////////////
	List<ProjectComment> getCommentsByProjectNo(int projectNo);
	ProjectComment getCommentByCommentNo(int commentNo);
	void commentRegister(ProjectComment comment);
	void commentDelete(int commentNo);
	void commentUpdate(ProjectComment comment);
	
}
