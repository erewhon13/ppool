package com.ppool.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ppool.dto.Notification;

public interface NotificationService {
	

	void insertNotification(Notification notification);

	List<Notification> notificationList();

	Notification notificationView(int notificationNo);


	
}
