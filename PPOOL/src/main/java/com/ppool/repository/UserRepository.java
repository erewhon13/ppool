package com.ppool.repository;

import java.util.HashMap;

import com.ppool.dto.User;

public interface UserRepository{
	void registerUser(User user);
	void userLogin(HashMap<String, Object>params);
}
