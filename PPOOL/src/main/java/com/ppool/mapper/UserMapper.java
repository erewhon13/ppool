package com.ppool.mapper;

import com.ppool.dto.User;

public interface UserMapper {
	void registerUser(User user);
	void userlogin(String userEmail,String userPasswd);
}
