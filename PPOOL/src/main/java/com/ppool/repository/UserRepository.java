package com.ppool.repository;

import java.util.HashMap;

import com.ppool.dto.User;

public interface UserRepository{
	void registerUser(User user);
	User userLogin(HashMap<String, Object>params);
	User userInfo(int userNo);
	void userInfoUpdate(User user);
	void userSkillRegister(HashMap<String, Object> params);
	void userLocationRegister(HashMap<String, Object> params);
}
