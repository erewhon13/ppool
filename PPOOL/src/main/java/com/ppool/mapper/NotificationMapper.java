package com.ppool.mapper;

import java.util.List;

import com.ppool.dto.Notification;

public interface NotificationMapper {

	List<Notification> notificationList();

	void insertNotification(Notification notification);

	Notification notificationView(int notificationNo);

	void notificationUpdate(Notification notification);

	 
		
	

}
