package com.ppool.repository;

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

	
}
