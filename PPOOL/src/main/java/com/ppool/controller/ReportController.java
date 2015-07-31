package com.ppool.controller;

import java.util.List;

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
	
	@RequestMapping(value="reportlist.action", method=RequestMethod.GET)
	public ModelAndView getReportList(){
		ModelAndView mav= new ModelAndView();
		List<Report> reports=reportService.getReportList();
		mav.addObject("reports", reports);
		mav.setViewName("report/reportlist");
		return mav;
	}
	
	@RequestMapping(value="minuswarningcount.action", method=RequestMethod.GET)
	public ModelAndView minusWarningCount(int projectNo, int reportNo){
		reportService.minusWarningCount(projectNo);
		reportService.deleteReport(reportNo);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/reportlist.action");
		return mav;
		
	}
	
	
}
