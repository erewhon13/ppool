package com.ppool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.User;
import com.ppool.repository.UserSearchRepository;

@Service("userSearchService")
public class FinalUserSearchService implements UserSearchService{
	
	private UserSearchRepository userSearchRepository;

	@Autowired
	@Qualifier("userSearchRepository")
	public void setUserSearchRepository(UserSearchRepository userSearchRepository){
		this.userSearchRepository = userSearchRepository;
	}
	
	@Override
	public List<User> getUserSearchList() {
		List<User> users = userSearchRepository.getUserSearchList();
		return users;
	}

}
