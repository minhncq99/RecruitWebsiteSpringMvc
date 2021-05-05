package com.java.service.impl;

import com.java.pojo.NewsForm;
import com.java.pojo.News;
import com.java.repository.NewsRepository;
import com.java.service.NewsService;
import java.util.List;
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

    @Override
    public List<News> getNewsByUser(String employerName, int page, int size) {
        return this.newsRepository.getNewsByUser(employerName, page, size);
    }

    @Override
    public long getNumberNewsByUser(String employerName) {
        return this.newsRepository.getNumberNewsByUser(employerName);
    }

    @Override
    public List<News> getNewgestNews(int page, int size) {
        return this.newsRepository.getNewgestNews(page, size);
    }

    @Override
    public News getNewsById(int i) {
        return this.newsRepository.getNewsById(i);
    }
    
}
