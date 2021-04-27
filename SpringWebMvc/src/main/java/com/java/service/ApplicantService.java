package com.java.service;

import com.java.pojo.ApplicantRegisterForm;
import com.java.pojo.Applicant;
/**
 *
 * @author minh
 */
public interface ApplicantService {
    boolean addApplicant(ApplicantRegisterForm applicantRegister);
    Applicant getApplicantByUserName(String applicantUserName);
}
