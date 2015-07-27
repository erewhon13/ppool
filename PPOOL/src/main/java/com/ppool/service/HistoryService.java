package com.ppool.service;

import java.util.List;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;

public interface HistoryService {
	int insertHistory(History history);
	void insertHistoryFile(HistoryUploadFile file);
	List<History> getHistoryList();
	History getHistoryByHistoryNo(int historyNo);
}
