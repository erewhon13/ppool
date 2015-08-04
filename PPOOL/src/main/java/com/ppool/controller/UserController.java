package com.ppool.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		ModelAndView mav = new ModelAndView();
		mav.setViewName("users/registeruser");
		return mav;
	}

	@RequestMapping(value = "registeruser.action", method = RequestMethod.POST)
	public ModelAndView registerUser(User user) {
		user.setUserPasswd(Util.getHashedString(user.getUserPasswd(), "SHA-1"));
		userService.registerUser(user);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/home.action");
		return mav;
	}

	@RequestMapping(value = "userlogin.action", method = RequestMethod.POST)
	// @ResponseBody user 리턴값의 User 객체가 MessageConvert 로 설정된
	// MappingJacksonHttpMessageConverter 에서 JSON data형식으로 변환 작업이 이뤄진다.
	public ModelAndView userLogin(String userEmail, String userPasswd,
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("userEmail", userEmail);
		params.put("userPasswd", Util.getHashedString(userPasswd, "SHA-1"));
		User user = userService.userLogin(params);
		if (user != null) {
			mav.addObject("loginuser", user);
		}
		// 리퍼러(referer)는 웹 브라우저로 월드 와이드 웹을 서핑할 때, 하이퍼링크를 통해서 각각의 사이트로 방문시 남는 흔적을
		// 말한다.
		String referer = request.getHeader("referer");
		// 요청이 들어온 url을 읽어서 반환
		mav.setViewName("redirect:" + referer.substring(27));
		return mav;
	}

	@RequestMapping(value = "userlogout.action", method = RequestMethod.GET)
	public ModelAndView userLogout(@ModelAttribute("loginuser") User user,
			SessionStatus status, HttpServletRequest request) {
		status.setComplete();
		ModelAndView mav = new ModelAndView();
		// 리퍼러(referer)는 웹 브라우저로 월드 와이드 웹을 서핑할 때, 하이퍼링크를 통해서 각각의 사이트로 방문시 남는 흔적을
		// 말한다.
		String referer = request.getHeader("referer");
		// 요청이 들어온 url을 읽어서 반환
		mav.setViewName("redirect:" + referer.substring(27));
		return mav;
	}

	@RequestMapping(value = "userinfo.action", method = RequestMethod.GET)
	public ModelAndView userInfo(int userNo, HttpServletRequest requset) {

		User user = userService.userInfo(userNo);
		String locations = StringUtils.collectionToCommaDelimitedString(Arrays
				.asList(user.getUserLocation()));
		String skills = StringUtils.collectionToCommaDelimitedString(Arrays
				.asList(user.getUserSkill()));
		String uri = requset.getRequestURI().toString();

		ModelAndView mav = new ModelAndView();
		mav.addObject("user", user);
		mav.addObject("uri", uri);

		mav.addObject("locations", locations);
		mav.addObject("skills", skills);
		mav.setViewName("users/userinfo");

		// session값이 없으면 home으로 강제이동
		// if (loginuser == null) {
		// mav.setViewName("redirect:/home.action");
		// }
		return mav;
	}

	@RequestMapping(value = "userinfoupdateform.action", method = RequestMethod.GET)
	public ModelAndView userInfoUpdateForm(int userNo) {
		User user = userService.userInfo(userNo);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		ModelAndView mav = new ModelAndView();
		// user.getUserLocation() 배열을 스트링으로 변환하는 작업
		String locations = StringUtils.collectionToCommaDelimitedString(Arrays
				.asList(user.getUserLocation()));
		String skills = StringUtils.collectionToCommaDelimitedString(Arrays
				.asList(user.getUserSkill()));
		mav.addObject("locations", locations);
		mav.addObject("skills", skills);
		mav.addObject("user", user);
		mav.addObject("date",sdf.format(user.getUserBirth()));

		mav.setViewName("users/userinfoupdateform");
		return mav;
	}

	@RequestMapping(value = "userinfoupdate.action", method = RequestMethod.POST)
	public ModelAndView userinfoUpdate(MultipartHttpServletRequest request,
			User user) {

		ServletContext application = request.getSession().getServletContext();
		String path = application.getRealPath("/resources/images");
		MultipartFile file = request.getFile("userProfile");
		String fileName = file.getOriginalFilename();
		user.setUserPictureSavedName(fileName);
		user.setUserPictureExist(true);

		int userNo = user.getUserNo();
		userService.userSkillDelete(userNo);
		userService.userLocationDelete(userNo);

		if (user.getUserLocation() != null && user.getUserLocation().length > 0) {
			for (String locationNo : user.getUserLocation()) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("locationNo", locationNo);
				params.put("userNo", userNo);

				userService.userLocationRegister(params);
			}
		}

		if (user.getUserSkill() != null && user.getUserSkill().length > 0) {
			for (String skillNo : user.getUserSkill()) {
				HashMap<String, Object> params = new HashMap<String, Object>();
				params.put("skillNo", skillNo);
				params.put("userNo", userNo);

				userService.userSkillRegister(params);
			}
		}

		userService.userInfoUpdate(user);
		// 파일을 디스크에 저장
		try {
			FileOutputStream ostream = new FileOutputStream(new File(path,
					user.getUserPictureSavedName()));
			InputStream istream = file.getInputStream();
			while (true) {
				int data = istream.read();
				if (data == -1)
					break;
				ostream.write(data);
			}
			istream.close();
			ostream.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/userinfo.action?userNo=" + user.getUserNo());
		return mav;
	}
}
