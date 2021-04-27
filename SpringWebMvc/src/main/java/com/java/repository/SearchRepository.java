package com.java.repository;

import java.util.List;
import com.java.pojo.News;

/**
 *
 * @author minh
 */
public interface SearchRepository {
    List<News> searchJobs(String keyword, int career, int location, int page, int size);
}
