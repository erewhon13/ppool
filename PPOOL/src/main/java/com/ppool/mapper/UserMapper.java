package com.ppool.mapper;

import java.util.HashMap;
import java.util.List;

import com.ppool.dto.Admins;
import com.ppool.dto.User;

public interface UserMapper {
	void registerUser(User user);
	User userLogin(HashMap<String, Object> params);
	User userInfo(int userNo);
	void userInfoUpdate(User user);
	void userSkillRegister(HashMap<String, Object> params);
	void userLocationRegister(HashMap<String, Object> params);
	void userLocationDelete(int userNo);
	void userSkillDelete(int userNo);
	void userStatusUpdate(HashMap<String, Object> params);
}
