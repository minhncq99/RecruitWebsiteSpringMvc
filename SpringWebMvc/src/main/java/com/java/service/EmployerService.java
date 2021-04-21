package com.java.service;

import com.java.pojo.EmployerRegisterForm;
import com.java.pojo.Employer;
/**
 *
 * @author minh
 */
public interface EmployerService {
    boolean addEmployer(EmployerRegisterForm employerRegister);
    Employer getEmployer(String username);
}
