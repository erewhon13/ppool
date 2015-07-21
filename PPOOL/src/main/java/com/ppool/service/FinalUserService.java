package com.ppool.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.User;
import com.ppool.mapper.UserMapper;
import com.ppool.repository.UserRepository;

@Service("userService")
public class FinalUserService implements UserService{
	
	private UserRepository userRepository;
	@Autowired
	@Qualifier("userRepository")
	public void setUserRepository (UserRepository userRepository){
		this.userRepository = userRepository;
	}
	
	public void registerUser(User user){
		userRepository.registerUser(user);
	}
}
