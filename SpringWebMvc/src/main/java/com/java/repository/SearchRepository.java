package com.java.repository;

import java.util.List;
import com.java.pojo.News;
import com.java.pojo.Applicant;

/**
 *
 * @author minh
 */
public interface SearchRepository {
    List<News> searchJobs(String keyword, int career, int location, int page, int size);
    long countSearchJobs(String keyword, int career, int location);
    List<Applicant> searchApplicant(String applicantUsername, int careerId);
}
