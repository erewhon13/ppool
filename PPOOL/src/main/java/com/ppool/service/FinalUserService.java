package com.ppool.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.User;
import com.ppool.mapper.UserMapper;
import com.ppool.repository.UserRepository;
import com.ppool.util.ChangeWord;

@Service("userService")
public class FinalUserService implements UserService {

	private UserRepository userRepository;

	@Autowired
	@Qualifier("userRepository")
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	public void registerUser(User user) {
		userRepository.registerUser(user);
	}

	@Override
	public User userLogin(HashMap<String, Object> params) {
		User user = userRepository.userLogin(params);
		return user;
	}

	@Override
	public User userInfo(int userNo) {
		User user = userRepository.userInfo(userNo);
		return user;
	}

	@Override
	public void userInfoUpdate(User user) {
		userRepository.userInfoUpdate(user);
	}

	@Override
	public void userSkillRegister(HashMap<String, Object> params) {
		userRepository.userSkillRegister(params);
		
	}

	@Override
	public void userLocationRegister(HashMap<String, Object> params) {
		userRepository.userLocationRegister(params);
	}
}
