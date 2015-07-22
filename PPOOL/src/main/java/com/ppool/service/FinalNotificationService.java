package com.ppool.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;



import com.ppool.dto.Notification;
import com.ppool.repository.NotificationRepository;

@Service("notificationService")
public class FinalNotificationService implements NotificationService {
	
	private NotificationRepository notificationRepository;
	
	@Autowired
	@Qualifier("notificationRepository")
	public void setNotificationRepository(NotificationRepository notificationRepository) {
		this.notificationRepository = notificationRepository;
	}
	
	public void insertNotification(Notification notification) {
		notificationRepository.insertNotification(notification);
	}

}
