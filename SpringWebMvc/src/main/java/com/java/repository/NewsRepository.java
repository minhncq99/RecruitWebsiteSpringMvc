package com.java.repository;

import com.java.pojo.NewsForm;

/**
 *
 * @author minh
 */
public interface NewsRepository {
    boolean addNews(NewsForm newsForm);
}