package com.ppool.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ppool.dto.Report;
import com.ppool.mapper.ReportMapper;

@Repository("reportRepository")
public class OracleReportRepository implements ReportRepository{

	private ReportMapper reportMapper;
	
	@Autowired
	@Qualifier("reportMapper")
	public void setReportMapper(ReportMapper reportMapper){
		this.reportMapper=reportMapper;
		
	}
	
	
	@Override
	public void insertReport(Report report) {
		reportMapper.insertReport(report);
		
	}

	@Override
	public void updateWarningCount(int projectNo) {
		reportMapper.updateWarningCount(projectNo);
		
	}
	@Override
	public List<Report> getReportList(){
		List<Report> reports=reportMapper.getReportList();
		return reports;
	}


	@Override
	public void minusWarningCount(int projectNo) {
		reportMapper.minusWarningCount(projectNo);		
	}


	@Override
	public void deleteReport(int reportNo) {
		reportMapper.deleteReport(reportNo);		
	};

	
}
