package com.ppool.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.History;
import com.ppool.repository.HistoryRepository;

@Service("historyService")
public class FinalHistoryService implements HistoryService{

	private HistoryRepository historyRepository;
	
	@Autowired
	@Qualifier("historyRepository")
	public void setHistoryRepository(HistoryRepository historyRepository){
		this.historyRepository=historyRepository;
	}
	
	
	public void insertHistory(History history) {
		historyRepository.insertHistory(history);		
	}

	
	
}
