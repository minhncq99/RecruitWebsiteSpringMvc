package com.java.repository.impl;

import com.java.pojo.WorkLocation;
import com.java.repository.WorkLocationRepository;
import java.util.List;
import javax.persistence.Transient;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author minh
 */
@Repository
public class WorkLocationRepositoryImpl implements WorkLocationRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    @Transactional
    public List<WorkLocation> getLocations() {
       
        Session session = sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<WorkLocation> criteriaQuery = builder.createQuery(WorkLocation.class);
        Root<WorkLocation> root = criteriaQuery.from(WorkLocation.class);
        criteriaQuery.select(root);
        
        Query<WorkLocation> query = session.createQuery(criteriaQuery);
        
        return query.getResultList();
    }
    
}
