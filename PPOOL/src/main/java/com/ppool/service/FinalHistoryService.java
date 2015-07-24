package com.ppool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;
import com.ppool.repository.HistoryRepository;

@Service("historyService")
public class FinalHistoryService implements HistoryService{

	private HistoryRepository historyRepository;
	
	@Autowired
	@Qualifier("historyRepository")
	public void setHistoryRepository(HistoryRepository historyRepository){
		this.historyRepository=historyRepository;
	}
	
	
	public int insertHistory(History history) {
		historyRepository.insertHistory(history);		
		return history.getHistoryNo();
	}

	
	

	@Override
	public List<History> getHistoryList() {
		List<History> histories=historyRepository.selectHistoryList();
		return histories;
	}


	@Override
	public void inserHistoryFile(HistoryUploadFile file) {
		historyRepository.insertHistoryFile(file);		
	}

	
	
}
