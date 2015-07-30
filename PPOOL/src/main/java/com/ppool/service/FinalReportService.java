package com.ppool.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ppool.dto.Report;
import com.ppool.repository.ReportRepository;

@Service("reportService")
public class FinalReportService implements ReportService{

	private ReportRepository reportRepository;
	
	@Autowired
	@Qualifier("reportRepository")
	public void setReportRepository(ReportRepository reportRepository){
		this.reportRepository=reportRepository;
	}
	
	
	@Override
	public void insertReport(Report report) {
		reportRepository.insertReport(report);
		
	}

	@Override
	public void updateWarningCount(int projectNo) {
		reportRepository.updateWarningCount(projectNo);		
	}

}
