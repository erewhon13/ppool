package com.ppool.service;

import java.util.HashMap;

import com.ppool.dto.User;

public interface UserService{
	void registerUser(User user);
	void userLogin(HashMap<String, Object>params);
}
