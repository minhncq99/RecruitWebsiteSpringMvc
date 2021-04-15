package com.java.repository.impl;

import com.java.pojo.EmployerRegisterForm;
import com.java.pojo.User;
import com.java.pojo.Employer;
import com.java.pojo.Location;
import com.java.repository.EmployerRepository;
import com.java.service.LocationService;
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
public class EmployerRepositoryImpl implements EmployerRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private UserService userService;
    @Autowired
    private LocationService locationService;
            
    @Override
    @Transactional
    public boolean addEmployer(EmployerRegisterForm employerRegister) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        // Create user
        User user = new User();
        user.setUserName(employerRegister.getUserName());
        user.setPassword(employerRegister.getPassword());
        user.setEmail(employerRegister.getEmail());
        user.setName(employerRegister.getName());
        user.setRole("ROLE_EMPLOYER");
        
        // Create employer
        Employer employer = new Employer();
        employer.setUser(user);
        employer.setDescription(employerRegister.getDescription());
        Location location = this.locationService.getLocationById(employerRegister.getLocation_id());
        
        try {
            if (location == null)
                throw new HibernateException("Không thể tìm thấy mã tỉnh thành!");
            
            employer.setLocation(location);
            this.userService.addUser(user);
            session.save(employer);
            
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }
    
}
