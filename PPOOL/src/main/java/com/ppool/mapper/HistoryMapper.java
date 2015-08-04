package com.ppool.mapper;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;

public interface HistoryMapper {
	
	int insertHistory(History history);
	void insertHistoryFile(HistoryUploadFile file);
	List<History> getHistoryList(int userNo);
	History getHistoryByHistoryNo(int historyNo);
	HistoryUploadFile getHistoryUploadFileByUploadFileNo(int uploadFileNo);
	void updateHistory(History history);
	void deleteHistory(int historyNo);
	void deleteHistoryUploadFile(int historyNo);
	int getHistoryCount();
	List<History> historyList(HashMap<String, Object> params);
	
}
