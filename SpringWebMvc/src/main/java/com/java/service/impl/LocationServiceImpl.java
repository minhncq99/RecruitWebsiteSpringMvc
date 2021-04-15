package com.java.service.impl;

import com.java.pojo.Location;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.java.repository.LocationRepository;
import com.java.service.LocationService;

/**
 *
 * @author minh
 */
@Service
public class LocationServiceImpl implements LocationService{
    @Autowired
    private LocationRepository locationRepository;
    
    @Override
    public List<Location> getLocations() {
        return this.locationRepository.getLocations();
    }

    @Override
    public Location getLocationById(int id) {
        return this.locationRepository.getLocationById(id);
    }
    
}
