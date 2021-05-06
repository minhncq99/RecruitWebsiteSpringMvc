package com.java.service.impl;

import com.java.pojo.Employer;
import com.java.pojo.EmployerRegisterForm;
import com.java.repository.EmployerRepository;
import com.java.service.EmployerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author minh
 */
@Service
public class EmployerServiceImpl implements EmployerService{

    @Autowired
    private EmployerRepository employerRepository;
    
    @Override
    public boolean addEmployer(EmployerRegisterForm employerRegister) {
        return this.employerRepository.addEmployer(employerRegister);
    }

    @Override
    public Employer getEmployer(String username) {
        return this.employerRepository.getEmployer(username);
    }

    @Override
    public List<Employer> recommendEmployer(int careerId) {
        return this.employerRepository.recommendEmployer(careerId);
    }
    
}
