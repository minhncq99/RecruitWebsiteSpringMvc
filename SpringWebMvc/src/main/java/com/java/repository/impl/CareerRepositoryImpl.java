package com.java.repository.impl;

import com.java.pojo.Career;
import com.java.repository.CareerRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author minh
 */
@Repository
public class CareerRepositoryImpl implements CareerRepository{
    @Autowired
    private LocalSessionFactoryBean SessionFactory;
    
    @Override
    @Transactional
    public List<Career> getCareers() {
        Session session = this.SessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Career> criteriaQuery = builder.createQuery(Career.class);
        Root<Career> root = criteriaQuery.from(Career.class);
        criteriaQuery.select(root);
        
        Query<Career> query = session.createQuery(criteriaQuery);
        
        return query.getResultList();
    }
    
}
