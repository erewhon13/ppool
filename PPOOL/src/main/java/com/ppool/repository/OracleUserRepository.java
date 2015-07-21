package com.ppool.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.User;
import com.ppool.mapper.UserMapper;

@Repository("userRepository")
public class OracleUserRepository implements UserRepository{
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public void registerUser(User user) {
		userMapper.registerUser(user);
	}

}
