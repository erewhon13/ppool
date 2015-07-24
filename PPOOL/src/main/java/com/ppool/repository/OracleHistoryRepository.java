package com.ppool.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;
import com.ppool.mapper.HistoryMapper;

@Repository("historyRepository")
public class OracleHistoryRepository implements HistoryRepository{

	private HistoryMapper historyMapper;
	@Autowired
	@Qualifier("historyMapper")
	public void setHistoryMapper(HistoryMapper historyMapper){
		this.historyMapper=historyMapper;
	}
	
	
	@Override
	public int insertHistory(History history) {
		int historyNo=historyMapper.insertHistory(history);
		return historyNo;
	}


	@Override
	public void insertHistoryFile(HistoryUploadFile file) {
		historyMapper.insertHistoryFile(file);		
	}


	@Override
	public List<History> selectHistoryList() {
		List<History> histories=historyMapper.getHistoryList();
		return histories;
	}
	
	

}
