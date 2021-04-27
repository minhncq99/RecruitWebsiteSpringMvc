package com.java.controller;

import com.java.service.CareerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.java.service.LocationService;
import com.java.service.SearchService;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author minh
 */
@Controller
@RequestMapping("/search")
public class SearchController {
    
    @Autowired
    private SearchService searchService;
    @Autowired
    private LocationService locationService;
    @Autowired
    private CareerService careerService;
      
    @RequestMapping("/news")
    public String searchJobs(Model model, 
            @RequestParam(value = "keyword") String keyword, 
            @RequestParam(value = "location") String location,
            @RequestParam(value = "career") String career) {
        this.addModelForJobPage(model);
        int careerId = career.matches("[0-9]+") ? Integer.parseInt(career) : 0;
        int locationId = location.matches("[0-9]+") ? Integer.parseInt(location) : 0;
        model.addAttribute("news", this.searchService.searchJobs(keyword, careerId, locationId, 1, 9));

        return "search";
    }
    
    private void addModelForJobPage(Model model) {
        model.addAttribute("cssfile", "company");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", locationService.getLocations());
    }
}
