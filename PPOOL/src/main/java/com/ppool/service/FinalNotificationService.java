package com.ppool.service;

import java.util.List;

import javax.naming.NoInitialContextException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;






import com.ppool.dto.Notification;
import com.ppool.repository.NotificationRepository;
import com.ppool.util.ChangeWord;

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
	
	public List<Notification> notificationList() {
		
		List<Notification> notifications =notificationRepository.notificationList();
		for (Notification notification : notifications) {
			notification.setStampRegisterDay(ChangeWord.dateToString(notification.getNotificationRegisterDay()));
		}
		return notifications;
		
		
	}
	
	public Notification notificationView(int notificationNo) {
		Notification notification = notificationRepository.notificationView(notificationNo);
		notification.setStampRegisterDay(ChangeWord.dateToString(notification.getNotificationRegisterDay()));
		return notification;
	}
	
	
	public void notificationUpdate(Notification notification) {
		notificationRepository.notificationUpdate(notification);
		
	}
	public void notificationDelete(int notificationNo) {
		notificationRepository.notificationDelete(notificationNo);
	}
	
	

}
