package com.ppool.repository;

import java.util.HashMap;
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
	public List<History> selectHistoryList(int userNo) {
		List<History> histories=historyMapper.getHistoryList(userNo);
		return histories;
	}


	@Override
	public History getHistoryByHistoryNo(int historyNo) {
		History history= historyMapper.getHistoryByHistoryNo(historyNo);
		return history;
	}


	@Override
	public HistoryUploadFile getHistoryUploadFileByUploadFileNo(int uploadFileNo) {
		
		HistoryUploadFile file=historyMapper.getHistoryUploadFileByUploadFileNo(uploadFileNo);
		return file;
		
	}


	@Override
	public void updateHistory(History history) {
		historyMapper.updateHistory(history);
	}


	@Override
	public void deleteHistory(int historyNo) {
		historyMapper.deleteHistory(historyNo);
	}


	@Override
	public void deleteHistoryUploadFile(int historyNo) {
		historyMapper.deleteHistoryUploadFile(historyNo);
		
	}


	@Override
	public int getHistoryCount() {
		int count=historyMapper.getHistoryCount();
		return count;
	}


	@Override
	public List<History> historyList(int first,int last) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("first", first);
		params.put("last", last);
		
		List<History> histories=historyMapper.historyList(params);
		return histories;
	}
	
	

}
