package com.ppool.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.User;
import com.ppool.mapper.UserMapper;

@Repository("userRepository")
public class OracleUserRepository implements UserRepository{
	
	private UserMapper userMapper;
	@Autowired
	@Qualifier("userMapper")
	public void setUserMapper(UserMapper userMapper){
		this.userMapper = userMapper;
	}
	
	@Override
	public void registerUser(User user) {
		userMapper.registerUser(user);
	}

	@Override
	public void userlogin(String userEmail, String userPasswd) {
		userMapper.userlogin(userEmail, userPasswd);
	}
}
