package com.java.service;

import com.java.pojo.NewsForm;
import java.util.List;
import com.java.pojo.News;

/**
 *
 * @author minh
 */
public interface NewsService {
    boolean addNews(NewsForm newsForm);
    List<News> getNewsByUser(String employerName, int page, int size);
    long getNumberNewsByUser(String employerName);
    List<News> getNewgestNews(int page, int size);
}
