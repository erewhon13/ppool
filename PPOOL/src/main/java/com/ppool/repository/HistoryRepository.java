package com.ppool.repository;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;

public interface HistoryRepository {
	
	int insertHistory(History history);
	void insertHistoryFile(HistoryUploadFile file);
	
}
