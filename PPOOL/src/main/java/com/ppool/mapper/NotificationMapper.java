package com.ppool.mapper;

import java.util.List;

import com.ppool.dto.Notification;

public interface NotificationMapper {

	List<Notification> notificationList();

	void insertNotification(Notification notification);

	Notification notificationView(int notificationNo);

	Notification notificationUpdate(int notificationNo);

	 
		
	

}
