package com.java.controller;

import com.java.pojo.News;
import com.java.pojo.NewsForm;
import com.java.service.CareerService;
import com.java.service.LocationService;
import com.java.service.NewsService;
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
    
    @ModelAttribute
    private void addModelAttribute(Model model) {
        model.addAttribute("cssfile", "employer");
        model.addAttribute("news", new NewsForm());
    }

    @RequestMapping({"/", "/{action}"})
    public String employerPage(@PathVariable(required = false) String action,Authentication auth, Model model) {
        if (action != null && action.equals("statistics")) {
            model.addAttribute("action", "statistics");
        } else if (action != null && action.equals("history")) {
            model.addAttribute("action", "history");
            model.addAttribute("newsList", this.newsService.getNews(auth.getName()));
        } else {
            this.addFormModel(model);
        }
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
            model.addAttribute("addError", "Đăng bản tuyển dụng không thành công");
            return "employer";
        }
        model.addAttribute("addSuccess", "Đã đăng bản tuyển dụng thành công");
        return "employer";
    }
             
    private void addFormModel(Model model) {
        model.addAttribute("action", null);
        model.addAttribute("location", this.locationService.getLocations());
        model.addAttribute("career", this.careerService.getCareers());
    }
}
