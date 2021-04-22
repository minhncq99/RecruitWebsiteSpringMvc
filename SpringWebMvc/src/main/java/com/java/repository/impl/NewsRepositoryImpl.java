package com.java.repository.impl;

import com.java.pojo.News;
import com.java.pojo.NewsForm;
import com.java.repository.NewsRepository;
import com.java.service.CareerService;
import com.java.service.EmployerService;
import com.java.service.LocationService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Set;
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
    public List<News> getNews(String employerName) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<News> query = builder.createQuery(News.class);
        Root<News> root = query.from(News.class);
        
        Predicate predicate = builder.equal(root.get("employer").as(String.class), employerName.trim());
        
        Query result = session.createQuery(query);
        
        return result.getResultList();
    }
    
}
