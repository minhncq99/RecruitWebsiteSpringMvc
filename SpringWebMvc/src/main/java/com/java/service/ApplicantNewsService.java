package com.java.service;

import com.java.pojo.News;
import java.util.List;

/**
 *
 * @author minh
 */
public interface ApplicantNewsService {
    boolean addApplicantNews(String applicantUserName, int newsId);
    List<News> getNewsApplyByUserName(String userName);
}
