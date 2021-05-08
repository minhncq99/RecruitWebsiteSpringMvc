package com.java.repository.impl;

import com.java.pojo.User;
import com.java.repository.UserRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author minh
 */
@Repository
public class UserRepositoryImpl  implements UserRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    
    @Override
    @Transactional
    public boolean addUser(User user) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        if (this.getUsers(user.getUserName()).size() != 0) {
            return false;
        }
        try {
           user.setPassword(this.passwordEncoder.encode(user.getPassword()));
           session.save(user);
           return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }

    @Override
    @Transactional
    public List<User> getUsers(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);
        
        Predicate predicte = builder.equal(root.get("userName").as(String.class), username.trim());
        query = query.where(predicte);
        
        Query result = session.createQuery(query);
        return result.getResultList();
    }
    
}
