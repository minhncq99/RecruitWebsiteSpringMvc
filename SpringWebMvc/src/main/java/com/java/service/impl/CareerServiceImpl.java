package com.java.service.impl;

import com.java.pojo.Career;
import com.java.repository.CareerRepository;
import com.java.service.CareerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author minh
 */
@Service
public class CareerServiceImpl implements CareerService{
    @Autowired
    private CareerRepository careerRepository;
    
    @Override
    public List<Career> getCareers() {
        return this.careerRepository.getCareers();
    }
    
}
