package com.java.repository.impl;

import com.java.pojo.ApplicantNews;
import com.java.pojo.News;
import com.java.repository.ApplicantNewsRepository;
import com.java.repository.ApplicantRepository;
import com.java.repository.NewsRepository;
import java.util.Date;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
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
public class ApplicantNewsRepositoryImpl implements ApplicantNewsRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private ApplicantRepository applicantRepository;
    @Autowired
    private NewsRepository  newsRepository;
    
    @Override
    @Transactional
    public boolean addApplicantNews(String applicantUserName, int newsId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        ApplicantNews applicantNews = new ApplicantNews();
        applicantNews.setDate(new Date());
        applicantNews.setApplicant(this.applicantRepository.getApplicantByUserName(applicantUserName));
        applicantNews.setNews(this.newsRepository.getNewsById(newsId));
        try {
            session.save(applicantNews);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    @Transactional
    public List<News> getNewsApplyByUserName(String userName) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<News> query = builder.createQuery(News.class);
        Root<News> root = query.from(News.class);
        
        Predicate predicate = builder.equal(root.joinSet("applicantNews").join("applicant")
                .join("user").get("userName").as(String.class), userName);
        query = query.where(predicate);
        
        Query result = session.createQuery(query);
        
        return result.getResultList();
    }
}
