package com.java.repository;

import java.util.List;
import com.java.pojo.ApplicantNews;
import com.java.pojo.News;
/**
 *
 * @author minh
 */
public interface ApplicantNewsRepository {
    boolean addApplicantNews(String applicantUserName, int newsId);
    List<News> getNewsApplyByUserName(String userName);
    ApplicantNews getNewsApplyByBothId(int applicantId, int newsId);
}
