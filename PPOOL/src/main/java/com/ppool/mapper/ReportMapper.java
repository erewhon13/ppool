package com.ppool.mapper;

import java.util.List;

import com.ppool.dto.Report;

public interface ReportMapper {

	void insertReport(Report report);
	void updateWarningCount(int projectNo);
	List<Report> getReportList();
	void minusWarningCount(int projectNo);
	void deleteReport(int reportNo);
}
