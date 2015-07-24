package com.ppool.mapper;

import java.util.List;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;

public interface HistoryMapper {
	
	int insertHistory(History history);
	void insertHistoryFile(HistoryUploadFile file);
	List<History> getHistoryList();

}
