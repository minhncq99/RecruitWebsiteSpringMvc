package com.java.repository;

import com.java.pojo.Location;
import java.util.List;

/**
 *
 * @author minh
 */
public interface LocationRepository {
    List<Location> getLocations();
    
    Location getLocationById(int id);
}
