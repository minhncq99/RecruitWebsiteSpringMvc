package com.java.repository;

import com.java.pojo.ApplicantRegisterForm;
import com.java.pojo.Applicant;

/**
 *
 * @author minh
 */
public interface ApplicantRepository {
    boolean addApplicant(ApplicantRegisterForm applicantRegister);
    Applicant getApplicantByUserName(String applicantUserName);
}
