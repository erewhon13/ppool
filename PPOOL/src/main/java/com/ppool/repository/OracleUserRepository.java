package com.ppool.repository;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.User;
import com.ppool.mapper.UserMapper;

@Repository("userRepository")
public class OracleUserRepository implements UserRepository {

	private UserMapper userMapper;

	@Autowired
	@Qualifier("userMapper")
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	@Override
	public void registerUser(User user) {
		userMapper.registerUser(user);
	}

	@Override
	public User userLogin(HashMap<String, Object> params) {
		User user = userMapper.userLogin(params);
		return user;
	}

	@Override
	public User userInfo(int userNo) {
		User user = userMapper.userInfo(userNo);
		return user;
	}

	@Override
	public void updateUserInfo(User user) {
		userMapper.updateUserInfo(user);
	}
}
