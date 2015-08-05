package com.ppool.service;

import java.util.HashMap;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.Admins;
import com.ppool.dto.User;
import com.ppool.mapper.UserMapper;
import com.ppool.repository.UserRepository;
import com.ppool.util.ChangeWord;

@Service("userService")
public class FinalUserService implements UserService {

	private UserRepository userRepository;

	@Autowired
	@Qualifier("userRepository")
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	public void registerUser(User user) {
		userRepository.registerUser(user);
		int userNo = user.getUserNo();

		if (user.getUserLocation() != null && user.getUserLocation().length > 0) {
			for (String locationNo : user.getUserLocation()) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("locationNo", locationNo);
				params.put("userNo", userNo);

				userRepository.userLocationRegister(params);
			}
		}

		if (user.getUserSkill() != null && user.getUserSkill().length > 0) {
			for (String skillNo : user.getUserSkill()) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("skillNo", skillNo);
				params.put("userNo", userNo);

				userRepository.userSkillRegister(params);
			}
		}

		String host = "smtp.gmail.com";
		String username = "ppoolmanager@gmail.com";
		String password = "ppoolproject";

		// 메일 내용
		String recipient = user.getUserEmail();
		String subject = "회원가입 인증";
		String body = "<a href='http://localhost:8081/ppool/activeview.action?userNo="
				+ userNo + "'>인증페이지</a>";

		// properties 설정
		Properties props = new Properties();
		props.put("mail.smtps.auth", "true");
		// 메일 세션
		Session session = Session.getDefaultInstance(props);
		MimeMessage msg = new MimeMessage(session);

		try {
			// 메일 관련
			msg.setSubject(subject);
			msg.setContent(body, "text/html; charset=utf-8");
			msg.setFrom(new InternetAddress(username));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
					recipient));

			// 발송 처리
			Transport transport = session.getTransport("smtps");
			transport.connect(host, username, password);
			transport.sendMessage(msg, msg.getAllRecipients());
			transport.close();
		} catch (Exception e) {

		}
	}

	@Override
	public User userLogin(HashMap<String, Object> params) {
		User user = userRepository.userLogin(params);
		return user;
	}

	@Override
	public User userInfo(int userNo) {
		User user = userRepository.userInfo(userNo);
		return user;
	}

	@Override
	public void userInfoUpdate(User user) {
		userRepository.userInfoUpdate(user);
	}

	@Override
	public void userSkillRegister(HashMap<String, Object> params) {
		userRepository.userSkillRegister(params);

	}

	@Override
	public void userLocationRegister(HashMap<String, Object> params) {
		userRepository.userLocationRegister(params);
	}

	@Override
	public void userLocationDelete(int userNo) {
		userRepository.userLocationDelete(userNo);
	}

	@Override
	public void userSkillDelete(int userNo) {
		userRepository.userSkillDelete(userNo);
	}

	@Override
	public void userStatusUpdate(HashMap<String, Object> params) {
		userRepository.userStatusUpdate(params);
	}
}
