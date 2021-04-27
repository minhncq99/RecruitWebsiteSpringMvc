package com.java.repository.impl;

import com.java.pojo.News;
import com.java.pojo.NewsForm;
import com.java.repository.NewsRepository;
import com.java.service.CareerService;
import com.java.service.EmployerService;
import com.java.service.LocationService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
public class NewsRepositoryImpl implements NewsRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private EmployerService employerService;
    @Autowired
    private CareerService careerService;
    @Autowired
    private LocationService locationService;
    
    @Override
    @Transactional
    public boolean addNews(NewsForm newsForm) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        News news = new News();
        news.setName(newsForm.getName());
        news.setSalary(newsForm.getSalary());
        news.setExperiance(newsForm.getExperiance());
        news.setTypeWorking(newsForm.getTypeWorking());
        news.setDescription(newsForm.getDescription());

        try {
            news.setTimeStart(new SimpleDateFormat("yyyy-MM-dd").parse(newsForm.getTimeStart()));
            news.setTimeEnd(new SimpleDateFormat("yyyy-MM-dd").parse(newsForm.getTimeEnd()));
        } catch (ParseException e) {
            return false;
        }
        
        news.setEmployer(this.employerService.getEmployer(newsForm.getUsernameEmployer()));

        news.setCareer(this.careerService.getCareerById(newsForm.getCareerId()));
        news.setLocation(this.locationService.getLocationById(newsForm.getLocationId()));
        try {
            session.save(news);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }

    @Override
    @Transactional
    public List<News> getNewsByUser(String employerName, int page, int size) {
        int position = (page - 1) * size;
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<News> query = builder.createQuery(News.class);
        Root<News> root = query.from(News.class);
        Predicate predicate = builder.equal(root.join("employer").join("user").get("userName").as(String.class), employerName.trim());
        query.where(predicate);
        Query result = session.createQuery(query);
        result.setFirstResult(position);
        result.setMaxResults(size);
        
        return result.getResultList();
    }

    @Override
    @Transactional
    public long getNumberNewsByUser(String employerName) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root<News> root = query.from(News.class);
        Predicate predicate = builder.equal(root.join("employer").join("user").get("userName").as(String.class), employerName.trim());
        query.where(predicate);
        query.select(builder.count(root.get("id")));
        
        Query result = session.createQuery(query);
        return (long) result.getSingleResult();
    }

    @Override
    @Transactional
    public List<News> getNewgestNews(int page, int size) {
        int position = (page - 1) * size;
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<News> query = builder.createQuery(News.class);
        Root<News> root = query.from(News.class);
        Predicate predicateDateStart = builder.lessThanOrEqualTo(root.get("timeStart").as(Date.class), new Date());
        Predicate predicateDateEnd = builder.greaterThanOrEqualTo(root.get("timeEnd").as(Date.class), new Date());
        
        query.where(builder.and(predicateDateStart, predicateDateEnd));
        query.orderBy(builder.asc(root.get("timeStart")));
        Query result = session.createQuery(query);
        result.setFirstResult(position);
        result.setMaxResults(size);
        
        return result.getResultList();
    }

    @Override
    @Transactional
    public News getNewsById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<News> query = builder.createQuery(News.class);
        Root<News> root = query.from(News.class);
        Predicate predicate = builder.equal(root.get("id").as(Integer.class), id);
        query.where(predicate);
        
        Query result = session.createQuery(query);
        return (News) result.getResultList().get(0);
    }
}
