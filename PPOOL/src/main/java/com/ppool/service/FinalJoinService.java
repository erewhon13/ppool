package com.ppool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.JoinProject;
import com.ppool.repository.JoinRepository;

@Service("joinService")
public class FinalJoinService implements JoinService{
	
	private JoinRepository joinRepository;
		
	@Autowired
	@Qualifier("joinRepository")
	public void setJoinRepository(JoinRepository joinRepository){
		this.joinRepository=joinRepository;
	}

	@Override
	public void insertJoin(JoinProject joinProject) {
		joinRepository.insertJoin(joinProject);
		
	}

	@Override
	public void deleteJoin(int projectNo, int userNo) {
		joinRepository.deleteJoin(projectNo,userNo);
		
	}

	@Override
	public List<JoinProject> getJoinList(int projectNo) {
		List<JoinProject> joinLists = joinRepository.getJoinList(projectNo);
		return joinLists;
	}

	
	
}
