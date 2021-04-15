package com.java.service.impl;

import com.java.pojo.ApplicantRegisterForm;
import com.java.repository.ApplicantRepository;
import com.java.service.ApplicantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author minh
 */
@Service
public class ApplicantServiceImpl implements ApplicantService{

    @Autowired
    private ApplicantRepository applicantRepository;
    
    @Override
    public boolean addApplicant(ApplicantRegisterForm applicantRegister) {
        return this.applicantRepository.addApplicant(applicantRegister);
    }
    
}
