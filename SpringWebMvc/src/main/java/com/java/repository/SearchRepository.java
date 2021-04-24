package com.java.repository;

import java.util.List;
import com.java.pojo.News;
import com.java.pojo.SearchJobsForm;

/**
 *
 * @author minh
 */
public interface SearchRepository {
    List<News> searchJobs(SearchJobsForm searchForm, int page, int size);
}
