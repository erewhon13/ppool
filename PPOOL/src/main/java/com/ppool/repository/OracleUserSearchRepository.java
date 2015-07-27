package com.ppool.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.User;
import com.ppool.mapper.UserSearchMapper;

@Repository("userSearchRepository")
public class OracleUserSearchRepository implements UserSearchRepository {
		
		
		private UserSearchMapper userSearchMapper;
		
		@Autowired
		@Qualifier("userSearchMapper")
		public void setUserSearchMapper(UserSearchMapper userSearchMapper){
			this.userSearchMapper  = userSearchMapper;
		}
		

		@Override
		public List<User> getUserSearchList() {
			List<User> users = userSearchMapper.getUserSearchList();
			return users;
			
		}
	
	
	
	
}
