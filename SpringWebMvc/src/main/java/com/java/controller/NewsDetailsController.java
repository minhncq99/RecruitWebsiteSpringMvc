package com.java.controller;

import com.java.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author minh
 */
@Controller
@ControllerAdvice
@RequestMapping("/news-details")
public class NewsDetailsController {
    
    @Autowired
    private NewsService newsService;
    
    @ModelAttribute
    public void modelAttribute(Model model) {
        model.addAttribute("cssfile", "newsdetails");
    }
    
    @RequestMapping("")
    public String defaultPage(Model model,
            @RequestParam(value = "newsid") String newsid) {
        int id = newsid.matches("[0-9]+") ? Integer.parseInt(newsid) : 0;
        model.addAttribute("news", this.newsService.getNewsById(id));
        return "newsdetail";
    }
}
