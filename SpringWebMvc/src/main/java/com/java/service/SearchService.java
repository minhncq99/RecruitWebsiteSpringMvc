package com.java.service;

import com.java.pojo.News;
import com.java.pojo.SearchJobsForm;
import java.util.List;

/**
 *
 * @author minh
 */
public interface SearchService {
    List<News> searchJobs(SearchJobsForm searchForm, int page, int size);
}
