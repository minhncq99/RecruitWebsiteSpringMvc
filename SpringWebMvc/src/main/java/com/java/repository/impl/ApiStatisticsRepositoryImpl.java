package com.java.repository.impl;

import com.java.pojo.ApplicantNews;
import com.java.pojo.News;
import com.java.repository.ApiStatisticsRepository;
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
public class ApiStatisticsRepositoryImpl implements ApiStatisticsRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    @Transactional
    public List<Object[]> countUserThroughCareer() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        Root<ApplicantNews> rootApplicantNews = query.from(ApplicantNews.class);
        Root<News> rootNews = query.from(News.class);
        Predicate predicateJoinWhere = builder.equal(rootApplicantNews.join("news").get("id"), 
                rootNews.get("id"));
        query.where(predicateJoinWhere);
        query.multiselect(rootNews.join("career").get("name"),
                builder.count(rootApplicantNews.get("id")));
        query.groupBy(rootNews.join("career").get("id"));
        Query result = session.createQuery(query);
        return result.getResultList();
    }
    
}
