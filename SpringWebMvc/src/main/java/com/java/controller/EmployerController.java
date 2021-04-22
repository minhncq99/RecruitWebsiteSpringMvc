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

    @RequestMapping("/")
    public String defaultPage(Model model) {
        this.addFormModel(model);
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
        model.addAttribute("newsList", this.newsService.getNewsByUser(auth.getName(), pageNumber, 5));
        this.addPaginationAttribute(model, page, page);
        
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
    
    private void addPaginationAttribute(Model model, String previous, String next) {
        model.addAttribute("action", "history");
        model.addAttribute("previous", previous);
        model.addAttribute("next", next);
    }
}
