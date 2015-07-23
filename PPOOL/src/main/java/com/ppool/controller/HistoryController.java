package com.ppool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.repository.HistoryRepository;


@Controller
public class HistoryController {
	
	private HistoryRepository historyRepository;
	
	@Autowired
	@Qualifier("historyRepository")
	public void setHistoryRepository(HistoryRepository historyRepository){
		this.historyRepository=historyRepository;
	}
	
	
	
	@RequestMapping(value = "historylist.action", method = RequestMethod.GET)
	public ModelAndView historyList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("history/historylist");
		return mav;
	}
	
	@RequestMapping(value="historyRegister.action", method=RequestMethod.GET)
	public ModelAndView historyRegister(){
		ModelAndView mav = new ModelAndView();
						
		mav.setViewName("history/historywriteform");
		return mav;
		
	}

}
