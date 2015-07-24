package com.ppool.repository;

import java.util.List;

import com.ppool.dto.Notification;

public interface NotificationRepository {

	void insertNotification(Notification notification);

	List<Notification> notificationList();

	Notification notificationView(int notificationNo);

	Notification notificationUpdate(int notificationNo);

}
