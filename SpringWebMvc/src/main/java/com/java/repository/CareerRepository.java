package com.java.repository;

import java.util.List;
import com.java.pojo.Career;

/**
 *
 * @author minh
 */
public interface CareerRepository {
    List<Career> getCareers();
    Career getCareerById(int id);
}
