package com.java.repository.impl;

import com.java.pojo.Location;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.transaction.annotation.Transactional;
import com.java.repository.LocationRepository;
import javax.persistence.criteria.Predicate;

/**
 *
 * @author minh
 */
@Repository
public class LocationRepositoryImpl implements LocationRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    @Transactional
    public List<Location> getLocations() {
       
        Session session = sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Location> criteriaQuery = builder.createQuery(Location.class);
        Root<Location> root = criteriaQuery.from(Location.class);
        criteriaQuery.select(root);
        
        Query<Location> query = session.createQuery(criteriaQuery);
        
        return query.getResultList();
    }

    @Override
    @Transactional
    public Location getLocationById(int locationId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Location> query = builder.createQuery(Location.class);
        Root<Location> root = query.from(Location.class);
        query = query.select(root);
        
        Predicate predicate = builder.equal(root.get("id").as(Integer.class), locationId);
        query.where(predicate);
        
        Query result = session.createQuery(query);
        
        return (Location) result.getResultList().get(0);
    }
}
