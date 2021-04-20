package com.java.service.impl;

import com.java.pojo.NewsForm;
import com.java.repository.NewsRepository;
import com.java.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author minh
 */
@Service
public class NewsServiceImpl implements NewsService {
    
    @Autowired
    private NewsRepository newsRepository;

    @Override
    public boolean addNews(NewsForm newsForm) {
        return this.newsRepository.addNews(newsForm);
    }
    
}
