package com.ppool.service;

import java.util.List;

import com.ppool.dto.Report;

public interface ReportService {

	void insertReport(Report report);
	void updateWarningCount(int projectNo);
	List<Report> getReportList();
	void minusWarningCount(int projectNo);
	void deleteReport(int reportNo);
}
