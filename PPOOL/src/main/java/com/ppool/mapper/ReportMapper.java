package com.ppool.mapper;

import com.ppool.dto.Report;

public interface ReportMapper {

	void insertReport(Report report);
	void updateWarningCount(int projectNo);
	
}
