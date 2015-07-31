package com.ppool.repository;

import java.util.List;

import com.ppool.dto.Report;

public interface ReportRepository {

	void insertReport(Report report);
	void updateWarningCount(int projectNo);
	List<Report> getReportList();
	void minusWarningCount(int projectNo);
	void deleteReport(int reportNo);
}
