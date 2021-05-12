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
    long getNumberNewsByUser(String employerName);
    List<News> getNewgestNews(int page, int size);
    News getNewsById(int id);
    List<News> getNewsByEmpoyerUsername(String employerUsername);
}