package com.java.repository;

import com.java.pojo.NewsForm;
import com.java.pojo.News;
import java.util.List;

/**
 *
 * @author minh
 */
public interface NewsRepository {
    boolean addNews(NewsForm newsForm);
    List<News> getNewsByUser(String employerName, int page, int size);
}