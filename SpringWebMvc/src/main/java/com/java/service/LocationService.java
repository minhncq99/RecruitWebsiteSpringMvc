package com.java.service;

import com.java.pojo.Location;
import java.util.List;

/**
 *
 * @author minh
 */
public interface LocationService {
    List<Location> getLocations();
    Location getLocationById(int id);
}
