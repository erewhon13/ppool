package com.ppool.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.Notification;
import com.ppool.mapper.NotificationMapper;

@Repository("notificationRepository")
public class OracleNotificationRepository implements NotificationRepository {
	
	private NotificationMapper notificationMapper;

	
	@Autowired
	@Qualifier("notificationMapper")
	public void setNotificationMapper(NotificationMapper notificationMapper) {
		this.notificationMapper = notificationMapper;
	}

	@Override
	public void insertNotification(Notification notification) {

		notificationMapper.insertNotification(notification);

	}

	public List<Notification> notificationList() {
		List<Notification> notifications = notificationMapper.notificationList();

		return notifications;
	}

//	public List<Instructor> getInstructorList(int first, int last) {
//
//		HashMap<String, Object> params = new HashMap<>();
//		params.put("first", first);
//		params.put("last", last);
//		
//		List<Instructor> instructors = instructorMapper.getInstructorList(params);
//
//		return instructors;
//	}
//
//	@Override
//	public Instructor getInstructorById(int instructorCode) {
//
//		Instructor instructor = instructorMapper
//				.getInstructorById(instructorCode);
//
//		return instructor;
//	}
//
//	@Override
//	public void instructorupdate(Instructor instructor) {
//
//		instructorMapper.instructorupdate(instructor);
//
//	}
//
//	@Override
//	public void instructordelete(int instructorCode) {
//
//		instructorMapper.instructordelete(instructorCode);
//	}
//
//	@Override
//	public int getInstructorCount() {
//
//		int count = instructorMapper.getInstructorCount();
//		return count;
//	}

}