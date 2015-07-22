package com.ppool.service;

import org.springframework.stereotype.Service;

import com.ppool.dto.Notification;

public interface NotificationService {
	void insertNotification(Notification notification);
	
}
