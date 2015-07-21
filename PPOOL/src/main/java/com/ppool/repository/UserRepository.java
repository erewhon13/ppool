package com.ppool.repository;

import com.ppool.dto.User;

public interface UserRepository{
	void registerUser(User user);
	void userlogin(String userEmail,String userPasswd);
}
