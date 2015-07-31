package com.ppool.service;

import java.util.List;

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


	@Override
	public List<Report> getReportList() {
		List<Report> reports = reportRepository.getReportList();
		return reports;
	}


	@Override
	public void minusWarningCount(int projectNo) {
			reportRepository.minusWarningCount(projectNo);
	}


	@Override
	public void deleteReport(int reportNo) {
		reportRepository.deleteReport(reportNo);		
	}

}
