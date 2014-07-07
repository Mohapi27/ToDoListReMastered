package com.todolist.service;

import java.util.List;

import com.todolist.model.Performance;

public interface PerformanceService {
	
	Long savePerformance(Performance performance);
	Long updatePerformance(Performance performance);
	List<Performance> getAllPerformances();
	List<Performance> getTopFivePerformers();
	Performance getPerformance(Long performanceId);
	
}
