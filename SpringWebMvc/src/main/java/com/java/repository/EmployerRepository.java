package com.java.repository;

import com.java.pojo.EmployerRegisterForm;
import com.java.pojo.Employer;
import java.util.List;

/**
 *
 * @author minh
 */
public interface EmployerRepository {
    boolean addEmployer(EmployerRegisterForm employerRegister);
    Employer getEmployer(String username);
    List<Employer> recommendEmployer(int careerId);
}
