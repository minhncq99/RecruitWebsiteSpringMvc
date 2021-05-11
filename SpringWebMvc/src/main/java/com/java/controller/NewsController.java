package com.java.controller;

import com.java.service.CareerService;
import com.java.service.LocationService;
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
 * @author ACER
 */
@Controller
@ControllerAdvice
@RequestMapping("/news")
public class NewsController {
    
    @Autowired
    private CareerService careerService;
    @Autowired
    private LocationService workLocationService;
    @Autowired
    private NewsService newsService;
    
    @ModelAttribute
    public void modelAttribute(Model model) {
        model.addAttribute("cssfile", "news");
    }
    
    @RequestMapping("")
    public String news(Model model) {
        model.addAttribute("cssfile", "news");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", workLocationService.getLocations());
        model.addAttribute("news", newsService.getNewgestNews(1, 8));
        return "news";
    }
}
