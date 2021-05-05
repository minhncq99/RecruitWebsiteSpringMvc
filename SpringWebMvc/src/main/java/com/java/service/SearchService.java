package com.java.service;

import com.java.pojo.Applicant;
import com.java.pojo.News;
import java.util.List;

/**
 *
 * @author minh
 */
public interface SearchService {
    List<News> searchJobs(String keyword, int career, int location, int page, int size);
    long countSearchJobs(String keyword, int career, int location);
    List<Applicant> searchApplicant(String applicantUsername, int careerId);
}
