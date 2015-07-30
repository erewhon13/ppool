package com.ppool.repository;

import com.ppool.dto.Report;

public interface ReportRepository {

	void insertReport(Report report);
	void updateWarningCount(int projectNo);
	
	
}
