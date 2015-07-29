package com.ppool.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.User;
import com.ppool.service.UserService;
import com.ppool.util.Util;

@Controller
@SessionAttributes("loginuser")
public class UserController {
	ModelAndView mav = new ModelAndView();

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,
				true));
	}

	@Autowired
	@Qualifier("userService")
	private UserService userService;

	@RequestMapping(value = "registerview.action", method = RequestMethod.GET)
	public ModelAndView registerView() {
		mav.setViewName("users/registeruser");
		return mav;
	}

	@RequestMapping(value = "registeruser.action", method = RequestMethod.POST)
	public ModelAndView registerUser(User user) {
		user.setUserPasswd(Util.getHashedString(user.getUserPasswd(), "SHA-1"));
		userService.registerUser(user);
		int userNo = user.getUserNo();
		
		if(user.getUserSkill() != null && user.getUserSkill().length > 0){
			for (String skillNo : user.getUserSkill() ) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("skillNo", skillNo);
				params.put("userNo", userNo);
				
				userService.userSkillRegister(params);
			}
		}
		if(user.getUserLocation() != null && user.getUserLocation().length > 0){
			for (String locationNo : user.getUserLocation() ) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("locationNo", locationNo);
				params.put("userNo", userNo);
				
				userService.userLocationRegister(params);
			}
		}
		
		String host = "smtp.gmail.com";
		String username = "ppoolmanager@gmail.com";
		String password = "ppoolproject";

		// 메일 내용
		String recipient = user.getUserEmail();
		String subject = "회원가입 인증";
		String body = "<a href='#'>인증페이지</a>";

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
		mav.setViewName("redirect:/home.action");
		return mav;
	}

	@RequestMapping(value = "userlogin.action", method = RequestMethod.POST)
	// @ResponseBody user 리턴값의 User 객체가 MessageConvert 로 설정된
	// MappingJacksonHttpMessageConverter 에서 JSON data형식으로 변환 작업이 이뤄진다.
	public @ResponseBody User userLogin(String userEmail, String userPasswd,
			Model model) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("userEmail", userEmail);
		params.put("userPasswd", Util.getHashedString(userPasswd, "SHA-1"));
		User user = userService.userLogin(params);
		if (user != null) {
			model.addAttribute("loginuser", user);
		}
		return user;
	}

	@RequestMapping(value = "userlogout.action", method = RequestMethod.GET)
	public ModelAndView userLogout(@ModelAttribute("loginuser") User user,
			SessionStatus status) {
		status.setComplete();
		mav.setViewName("redirect:/");
		return mav;
	}

	@RequestMapping(value = "userinfo.action", method = RequestMethod.GET)
	public ModelAndView userInfo(int userNo, HttpServletRequest requset) {

		User user = userService.userInfo(userNo);

		String uri = requset.getRequestURI().toString();

		mav.addObject("user", user);
		mav.addObject("uri", uri);
		mav.setViewName("users/userinfo");
		return mav;
	}

	@RequestMapping(value = "userinfoupdateform.action", method = RequestMethod.GET)
	public ModelAndView userInfoUpdateForm(int userNo) {
		User user = userService.userInfo(userNo);
		mav.addObject("user", user);
		mav.setViewName("users/userinfoupdateform");
		return mav;
	}

	@RequestMapping(value = "userinfoupdate.action", method = RequestMethod.POST)
	public ModelAndView userinfoUpdate(MultipartHttpServletRequest request,User user){
		ServletContext application = request.getSession().getServletContext();
		String path = application.getRealPath("/resources/images");
		MultipartFile file = request.getFile("userProfile");
		String fileName = file.getOriginalFilename();
		user.setUserPictureSavedName(fileName);
		user.setUserPictureExist(true);
		userService.userInfoUpdate(user);
		//파일을 디스크에 저장
		try {
			FileOutputStream ostream = 
				new FileOutputStream(new File(path, user.getUserPictureSavedName()));
			InputStream istream = file.getInputStream();
			while (true) {
				int data = istream.read();
				if (data == -1) break;
				ostream.write(data);
			}
			istream.close();
			ostream.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		mav.addObject("fileName",fileName);
		mav.setViewName("redirect:/userinfo.action?userNo="+user.getUserNo());
		return mav;
	}
}
