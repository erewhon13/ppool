package com.ppool.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.User;
import com.ppool.service.UserService;

@Controller
public class UserController {
	ModelAndView mav = new ModelAndView();
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,
				true));
	}
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="registerview.action" ,method = RequestMethod.GET)
	public ModelAndView registerView(){
		mav.setViewName("users/registeruser");
		return mav;
	}
	@RequestMapping(value="registeruser.action",method = RequestMethod.POST)
	public ModelAndView registerUser(User user){
		userService.registerUser(user);
		String host = "smtp.gmail.com";
        String username = "ppoolmanager@gmail.com";
        String password = "ppoolproject";
         
        // 메일 내용
        String recipient = user.getUserEmail();
        String subject = "회원가입 인증";
        String body = "<a href='#'>TEST</a>";
         
        //properties 설정
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
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
     
            // 발송 처리
            Transport transport = session.getTransport("smtps");
            transport.connect(host, username, password);
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
		} catch (Exception e) {
			
		}
		mav.setViewName("redirect:home.action");
		return mav;
	}
}
