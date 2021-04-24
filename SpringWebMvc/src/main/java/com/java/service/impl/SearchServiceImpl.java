package com.java.service.impl;

import com.java.pojo.News;
import com.java.pojo.SearchJobsForm;
import com.java.repository.SearchRepository;
import com.java.service.SearchService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author minh
 */
@Service
public class SearchServiceImpl implements SearchService {

    @Autowired
    private SearchRepository searchRepository;
    
    @Override
    public List<News> searchJobs(SearchJobsForm searchForm, int page, int size) {
        return this.searchRepository.searchJobs(searchForm, page, size);
    }
    
}
