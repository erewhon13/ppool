package com.ppool.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ppool.dto.User;
import com.ppool.repository.UserRepository;

@Service("userService")
public class FinalUserService implements UserService{
	
	
	@Autowired
	private UserRepository userRepositor;
	
	public void registerUser(User user){
		userRepositor.registerUser(user);
	}
}
