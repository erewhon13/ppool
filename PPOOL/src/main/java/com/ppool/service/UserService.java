
package com.ppool.service;

import java.util.HashMap;

import com.ppool.dto.User;

public interface UserService{
	void registerUser(User user);
	User userLogin(HashMap<String, Object>params);
	User userInfo(int userNo);
	void updateUserInfo(User user);
}

