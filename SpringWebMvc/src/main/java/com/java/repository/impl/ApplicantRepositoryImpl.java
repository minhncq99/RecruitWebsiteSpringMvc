package com.java.repository.impl;

import com.java.pojo.ApplicantRegisterForm;
import com.java.pojo.User;
import com.java.pojo.Career;
import com.java.pojo.Applicant;
import com.java.repository.ApplicantRepository;
import com.java.service.CareerService;
import com.java.service.UserService;
import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Session;


/**
 *
 * @author minh
 */
@Repository
public class ApplicantRepositoryImpl implements ApplicantRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private UserService userService;
    @Autowired
    private CareerService careerService;
    
    @Override
    @Transactional
    public boolean addApplicant(ApplicantRegisterForm applicantRegister) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        // Create user
        User user = new User();
        user.setUserName(applicantRegister.getUsername());
        user.setPassword(applicantRegister.getPassword());
        user.setEmail(applicantRegister.getEmail());
        user.setName(applicantRegister.getName());
        user.setRole("ROLE_APPLICANT");
        
        // Create Applicant
        Applicant applicant = new Applicant();
        applicant.setGender(applicantRegister.getGender());
        applicant.setDescription(applicantRegister.getDescription());
        applicant.setExperiance(applicantRegister.getExperiance());
        applicant.setUser(user);
        
        Career career = this.careerService.getCareerById(applicantRegister.getCareerId());
        try {
            if (career == null)
                throw new HibernateException("Không thể tìm thấy ngành nghề");
            applicant.setCareer(career);
            this.userService.addUser(user);
            session.save(applicant);
            
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
}
