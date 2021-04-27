package com.java.service.impl;

import com.java.pojo.News;
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
    public List<News> searchJobs(String keyword, int career, int location, int page, int size) {
        return this.searchRepository.searchJobs(keyword, career, location, page, size);
    }

    @Override
    public long countSearchJobs(String keyword, int career, int location) {
        return this.searchRepository.countSearchJobs(keyword, career, location);
    }
    
}
