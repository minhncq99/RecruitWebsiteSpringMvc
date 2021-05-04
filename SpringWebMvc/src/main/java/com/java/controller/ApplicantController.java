package com.java.controller;

import com.java.service.ApplicantNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author minh
 */
@Controller
@RequestMapping("/applicant")
public class ApplicantController {
    
    @Autowired
    private ApplicantNewsService applicantNewsService;
     
    @RequestMapping("/")
    public String defaultPage(Model model, Authentication auth) {
        model.addAttribute("news", 
                this.applicantNewsService.getNewsApplyByUserName(auth.getName()));
        return "applicant";
    }
    
    @PostMapping("/apply")
    public String apply(Model model, Authentication auth,
            @RequestParam(value = "username") String username,
            @RequestParam(value = "news") String news){
        model.addAttribute("news", 
                this.applicantNewsService.getNewsApplyByUserName(auth.getName()));
        int newsId = !news.matches("[0-9]+") ? 0 : (Integer.parseInt(news) > 0) ?
                Integer.parseInt(news) : -Integer.parseInt(news);
        boolean result = (newsId == 0) ? false : this.applicantNewsService.addApplicantNews(username, newsId);
        
        model.addAttribute("apply", result);
        return "applicant";
    }
}
