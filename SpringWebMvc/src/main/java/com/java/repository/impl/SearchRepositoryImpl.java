package com.java.repository.impl;

import com.java.pojo.News;
import com.java.pojo.SearchJobsForm;
import com.java.repository.SearchRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
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
    public List<News> searchJobs(SearchJobsForm searchForm, int page, int size) {
        int position = (page - 1) * size;
        String keyword = String.format("%%%s%%", searchForm.getKeyword());
        
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<News> query = builder.createQuery(News.class);
        Root<News> root = query.from(News.class);
        Predicate locationPredicate = builder.equal(root.join("location").get("id").as(Integer.class), searchForm.getLocationId());
        Predicate careerPredicate = builder.equal(root.join("career").get("id").as(Integer.class), searchForm.getLocationId());
        Predicate keywordPredicate = builder.like(root.get("name").as(String.class), keyword);
        
        query.where(builder.and(locationPredicate, careerPredicate, keywordPredicate));
        
        return session.createQuery(query).getResultList();
    }
    
}
