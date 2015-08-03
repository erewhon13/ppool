package com.ppool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ppool.dto.JoinProject;
import com.ppool.service.JoinService;

@Controller
public class JoinController {

	private JoinService joinService;
	
	@Autowired
	@Qualifier("joinService")
	public void setJoinService(JoinService joinService){
		this.joinService=joinService;
	}
	
	@RequestMapping(value="insertjoin.action", method=RequestMethod.POST)
	@ResponseBody
	public String inserJoin(JoinProject joinProject){
		joinService.insertJoin(joinProject);
		return "success";
	}
	
	
}
