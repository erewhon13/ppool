package com.ppool.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;
import com.ppool.repository.HistoryRepository;
import com.ppool.util.ChangeWord;

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
	public List<History> getHistoryList(int userNo) {
		List<History> histories=historyRepository.selectHistoryList(userNo);
		
		for (History history:histories){
			history.setStartDay(ChangeWord.dateToString(history.getHistoryStartDay()));
			history.setEndDay(ChangeWord.dateToString(history.getHistoryEndDay()));
		}
		
		return histories;
	}

	@Override
	public void insertHistoryFile(HistoryUploadFile file) {
		historyRepository.insertHistoryFile(file);		
	}


	@Override
	public History getHistoryByHistoryNo(int historyNo) {
		History history=historyRepository.getHistoryByHistoryNo(historyNo);
		return history;
	}


	@Override
	public HistoryUploadFile getHistoryUploadFileByUploadFileNo(int uploadFileNo) {
		HistoryUploadFile file=historyRepository.getHistoryUploadFileByUploadFileNo(uploadFileNo);
		return file;
	}


	@Override
	public void updateHistory(History history) {
		historyRepository.updateHistory(history);
		
	}


	@Override
	public void deleteHistory(int historyNo) {
		historyRepository.deleteHistory(historyNo);
	}


	@Override
	public void deleteHistoryUploadFile(int historyNo) {
		historyRepository.deleteHistoryUploadFile(historyNo);
	}


	@Override
	public int getHistoryCount() {
		int count = historyRepository.getHistoryCount();
		return count;
	}


	@Override
	public List<History> historyList(int first,int last) {
		List<History> histories=historyRepository.historyList(first,last);
		return histories;		
	}

	
	
}
