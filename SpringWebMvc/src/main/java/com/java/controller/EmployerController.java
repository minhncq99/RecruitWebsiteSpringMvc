package com.java.controller;

import com.java.pojo.NewsForm;
import com.java.service.CareerService;
import com.java.service.LocationService;
import com.java.service.NewsService;
import com.java.service.SearchService;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author minh
 */
@Controller
@ControllerAdvice
@RequestMapping("/employer")
public class EmployerController {
    
    @Autowired
    private LocationService locationService;
    @Autowired
    private CareerService careerService;
    @Autowired
    private NewsService newsService;
    @Autowired
    private SearchService searchService;
    
    @ModelAttribute
    private void addModelAttribute(Model model) {
        model.addAttribute("cssfile", "employer");
        model.addAttribute("news", new NewsForm());
    }

    @RequestMapping("/")
    public String defaultPage(Model model) {
        this.addFormModel(model);
        return "employer";
    }
    
    @RequestMapping("/search-app")
    public String searchApplicant(Model model) {
        model.addAttribute("action", "search-app");
        model.addAttribute("career", this.careerService.getCareers());
        return "employer";
    }
    
    @RequestMapping("/search-app/")
    public String searchApplicant(Model model,
            @RequestParam(value = "keyword") String keyword,
            @RequestParam(value = "career") String career) {
        int careerId = career.matches("[0-9]+") ? Integer.parseInt(career) : 0;
        model.addAttribute("applicantList", this.searchService.searchApplicant(keyword, careerId));
        model.addAttribute("action", "search-app");
        model.addAttribute("career", this.careerService.getCareers());
        
        return "employer";
    }
    
    @RequestMapping({"/history", "/history/{page}"})
    public String historyPage(Authentication auth, Model model, @PathVariable(required = false) String page) {
        int pageNumber = 1;
        try {
            pageNumber = Integer.parseInt(page);
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        pageNumber = (pageNumber < 1) ? -pageNumber : pageNumber; 
        model.addAttribute("newsList", this.newsService.getNewsByUser(auth.getName(), pageNumber, 5));
        long countNews = this.newsService.getNumberNewsByUser(auth.getName());
        this.addPaginationAttribute(model, (pageNumber < 2) ? "disabled" : "",
                (pageNumber * 5 < countNews) ? "" : "disabled", pageNumber);
        List<Integer> listPage = new ArrayList<>();
        double maxPage = Math.ceil(countNews / 5.0);
        for (int i = 1; i <= maxPage; i++) {
            listPage.add(i);
        }
        model.addAttribute("listPage",listPage);
        return "employer";
    }
    
    @PostMapping("/addNews")
    public String createNews(Model model, @Valid @ModelAttribute(value = "news") NewsForm newsForm, BindingResult result, Authentication auth) {
        this.addFormModel(model);
        if (result.hasErrors()) {
            return "employer";
        } 
        newsForm.setUsernameEmployer(auth.getName());
        if (!this.newsService.addNews(newsForm)) {
            model.addAttribute("addError", "????ng b???ng tin kh??ng th??nh c??ng");
            return "employer";
        }
        model.addAttribute("addSuccess", "????ng b???ng tin th??nh c??ng");
        return "employer";
    }
    @RequestMapping("/chart")
    public String chart(Model model) {
        return "chart";
    }
             
    private void addFormModel(Model model) {
        model.addAttribute("action", null);
        model.addAttribute("location", this.locationService.getLocations());
        model.addAttribute("career", this.careerService.getCareers());
    }
    
    private void addPaginationAttribute(Model model, String previous, String next, int select) {
        model.addAttribute("action", "history");
        model.addAttribute("previous", previous);
        model.addAttribute("next", next);
        model.addAttribute("select", select);
    }
}
