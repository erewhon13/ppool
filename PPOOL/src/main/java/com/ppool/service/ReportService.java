package com.ppool.service;

import com.ppool.dto.Report;

public interface ReportService {

	void insertReport(Report report);
	void updateWarningCount(int projectNo);
	
	
}
