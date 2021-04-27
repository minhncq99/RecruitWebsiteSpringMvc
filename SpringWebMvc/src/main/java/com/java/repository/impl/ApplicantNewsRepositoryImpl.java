package com.java.repository.impl;

import com.java.pojo.ApplicantNews;
import com.java.repository.ApplicantNewsRepository;
import com.java.repository.ApplicantRepository;
import com.java.repository.NewsRepository;
import java.util.Date;
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
    
}
