package com.java.controller;

import com.java.service.CareerService;
import com.java.service.LocationService;
import com.java.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author minh
 */
@Controller
@RequestMapping("/search")
public class SearchController {
    
    @Autowired
    private SearchService searchService;
    private LocationService locationService;
    private CareerService careerService;
    
    @RequestMapping("/news")
    public String searchJobs(Model model) {
        this.addModelForJobPage(model);
        
        return "job";
    }
    
    private void addModelForJobPage(Model model) {
        model.addAttribute("cssfile", "job");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", locationService.getLocations());
    }
}
