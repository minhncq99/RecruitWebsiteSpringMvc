package com.java.service.impl;

import com.java.repository.ApiStatisticsRepository;
import com.java.service.ApiStatisticsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author minh
 */
@Service
public class ApiStaticsServiceImpl implements ApiStatisticsService {

    @Autowired
    private ApiStatisticsRepository apiStatisticsRepository;
    
    @Override
    public List<Object[]> countUserThroughCareer() {
        return this.apiStatisticsRepository.countUserThroughCareer();
    }
    
}
