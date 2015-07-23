package com.ppool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.repository.HistoryRepository;


@Controller
@RequestMapping(value="history")
public class HistoryController {
	
	private HistoryRepository historyRepository;
	
	@Autowired
	@Qualifier("historyRepository")
	public void setHistoryRepository(HistoryRepository historyRepository){
		this.historyRepository=historyRepository;
	}
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value = "historylist.action", method = RequestMethod.GET)
	public ModelAndView historyList() {
		
		mav.setViewName("history/historylist");
		return mav;
	}
	
	

}
