package com.java.service.impl;

import com.java.pojo.News;
import com.java.repository.ApplicantNewsRepository;
import com.java.service.ApplicantNewsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author minh
 */
@Service
public class ApplicantNewsServiceImpl implements ApplicantNewsService {

    @Autowired
    private ApplicantNewsRepository applicantNewsRepository;
    
    @Override
    public boolean addApplicantNews(String applicantUserName, int newsId) {
        return this.applicantNewsRepository.addApplicantNews(applicantUserName, newsId);
    }

    @Override
    public List<News> getNewsApplyByUserName(String userName) {
        return this.applicantNewsRepository.getNewsApplyByUserName(userName);
    }
}