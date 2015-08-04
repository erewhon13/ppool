package com.ppool.repository;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;

public interface HistoryRepository {
	
	int insertHistory(History history);
	void insertHistoryFile(HistoryUploadFile file);
	List<History> selectHistoryList(int userNo);
	History getHistoryByHistoryNo(int historyNo);
	HistoryUploadFile getHistoryUploadFileByUploadFileNo(int uploadFileNo);
	void updateHistory(History history);
	void deleteHistory(int historyNo);
	void deleteHistoryUploadFile(int historyNo);
	int getHistoryCount();
	List<History> historyList(int first,int last);
}
