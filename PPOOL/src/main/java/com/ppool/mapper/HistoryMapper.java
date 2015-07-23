package com.ppool.mapper;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;

public interface HistoryMapper {
	
	int insertHistory(History history);
	void insertHistoryFile(HistoryUploadFile file);
	

}
