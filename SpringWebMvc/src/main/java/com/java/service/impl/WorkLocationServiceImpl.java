package com.java.service.impl;

import com.java.pojo.WorkLocation;
import com.java.repository.WorkLocationRepository;
import com.java.service.WorkLocationService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author minh
 */
@Service
public class WorkLocationServiceImpl implements WorkLocationService{
    @Autowired
    private WorkLocationRepository locationRepository;
    
    @Override
    public List<WorkLocation> getLocations() {
        return this.locationRepository.getLocations();
    }
    
}
