package com.ppool.repository;

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
		historyMapper.insertHistory(history);
		return history.getHistoryNo();
	}


	@Override
	public void insertHistoryFile(HistoryUploadFile file) {
		historyMapper.insertHistoryFile(file);		
	}
	
	

}
