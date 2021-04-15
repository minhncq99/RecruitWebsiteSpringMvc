package com.java.repository.impl;

import com.java.pojo.Career;
import com.java.repository.CareerRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
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
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    @Transactional
    public List<Career> getCareers() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Career> criteriaQuery = builder.createQuery(Career.class);
        Root<Career> root = criteriaQuery.from(Career.class);
        criteriaQuery.select(root);
        
        Query<Career> query = session.createQuery(criteriaQuery);
        
        return query.getResultList();
    }

    @Override
    @Transactional
    public Career getCareerById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Career> query = builder.createQuery(Career.class);
        Root<Career> root = query.from(Career.class);
        
        Predicate predicate = builder.equal(root.get("id").as(Integer.class), id);
        query = query.where(predicate);
        
        Query result = session.createQuery(query);
        return (Career) result.getResultList().get(0);
    }
}
