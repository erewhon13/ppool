package com.ppool.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.JoinProject;
import com.ppool.mapper.JoinMapper;


@Repository("joinRepository")
public class OracleJoinRepository implements JoinRepository{
	
	private JoinMapper joinMapper;
	
	@Autowired
	@Qualifier("joinMapper")
	public void setJoinMapper(JoinMapper joinMapper){
		this.joinMapper=joinMapper;
	}

	@Override
	public void insertJoin(JoinProject joinProject) {
		joinMapper.insertJoin(joinProject);
		
	}

	@Override
	public void deleteJoin(int projectNo, int userNo) {
		
		HashMap<String, Object> params=new HashMap<>();
		params.put("userNo", userNo);
		params.put("projectNo", projectNo);
		
		
		joinMapper.deleteJoin(params);		
	}

	@Override
	public List<JoinProject> getJoinList(int projectNo) {
		List<JoinProject> joinLists = joinMapper.getJoinList(projectNo);
		return joinLists;
	}

	
	
	
}
