package com.java.controller;

import com.java.service.ApiStatisticsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author minh
 */
@RestController
public class ApiStatisticsController {
    
    @Autowired
    private ApiStatisticsService apiStatisticsService;
    
    @GetMapping("/api/statistics")
    public ResponseEntity<List<Object[]>> countUserThroughCareer() {
        return new ResponseEntity<>(this.apiStatisticsService.countUserThroughCareer(),
                HttpStatus.OK);
    }
}
