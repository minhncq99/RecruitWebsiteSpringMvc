package com.java.repository.impl;

import com.java.pojo.News;
import com.java.repository.SearchRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author minh
 */
@Repository
public class SearchRepositoryImpl implements SearchRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    @Transactional
    public List<News> searchJobs(String keyword, int career, int location, int page, int size) {
        int position = (page - 1) * size;
        String key = String.format("%%%s%%", keyword);
        
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<News> query = builder.createQuery(News.class);
        Root<News> root = query.from(News.class);
        Predicate locationPredicate = (location != 0) ? 
                builder.equal(root.join("location").get("id").as(Integer.class), location) :
                builder.like(root.get("name").as(String.class), key);
        Predicate careerPredicate = (career != 0) ? builder.equal(root.join("career").get("id").as(Integer.class), career) :
                builder.like(root.get("name").as(String.class), key);
        Predicate keywordPredicate = builder.like(root.get("name").as(String.class), key);
        
        query.where(builder.and(locationPredicate, careerPredicate, keywordPredicate));
        query.orderBy(builder.asc(root.get("timeStart")));
        Query result = session.createQuery(query);
        result.setFirstResult(position);
        result.setMaxResults(size);
        
        return result.getResultList();
    }

    @Override
    @Transactional
    public long countSearchJobs(String keyword, int career, int location) {
        String key = String.format("%%%s%%", keyword);
        
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root<News> root = query.from(News.class);
        Predicate locationPredicate = (location != 0) ? 
                builder.equal(root.join("location").get("id").as(Integer.class), location) :
                builder.like(root.get("name").as(String.class), key);
        Predicate careerPredicate = (career != 0) ? builder.equal(root.join("career").get("id").as(Integer.class), career) :
                builder.like(root.get("name").as(String.class), key);
        Predicate keywordPredicate = builder.like(root.get("name").as(String.class), key);
        
        query.where(builder.and(locationPredicate, careerPredicate, keywordPredicate));
        query.select(builder.count(root.get("id")));
        
        return (long) session.createQuery(query).getSingleResult();
    }
    
}
