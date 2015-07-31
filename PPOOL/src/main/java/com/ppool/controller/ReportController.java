package com.ppool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.Report;
import com.ppool.service.ReportService;


@Controller
public class ReportController {

	private ReportService reportService;
	
	@Autowired
	@Qualifier("reportService")
	public void setReportService(ReportService reportService){
		this.reportService=reportService;
	}
	
	@RequestMapping(value="insertreport.action",method = RequestMethod.POST)
	@ResponseBody
	public String insertReport(Report report){
		reportService.insertReport(report);
		reportService.updateWarningCount(report.getProjectNo());		
		//mav.setViewName("redirect:/projectdetailview.action?projectNo="+report.getProjectNo());
		return "success";		
	}
	
	
	
}
