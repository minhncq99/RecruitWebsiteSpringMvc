package com.java.controller;

import com.java.service.CareerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.java.service.LocationService;
import com.java.service.SearchService;
import java.util.ArrayList;
import java.util.List;
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
            @RequestParam(value = "career") String career,
            @RequestParam(value = "page", required = false) String page) {
        
        int careerId = career.matches("[0-9]+") ? Integer.parseInt(career) : 0;
        int locationId = location.matches("[0-9]+") ? Integer.parseInt(location) : 0;
        long countNews = this.searchService.countSearchJobs(keyword, careerId, locationId);        
        int pageNumber = (page == null || !page.matches("[0-9]+")) 
                ? 1 : (Integer.parseInt(page) > 0) ? Integer.parseInt(page) : -Integer.parseInt(page);
        
        this.addModelForJobPage(model, pageNumber, locationId, careerId, keyword);
        this.addPaginationAttribute(model, (pageNumber < 2) ? "disabled" : "",
                (pageNumber * 9 < countNews) ? "" : "disabled", pageNumber);
        List<Integer> listPage = new ArrayList<>();
        double maxPage = Math.ceil(countNews / 9.0);
        for (int i = 1; i <= maxPage; i++) {
            listPage.add(i);
        }
        model.addAttribute("listPage",listPage);
        model.addAttribute("news", this.searchService.searchJobs(keyword, careerId, locationId, pageNumber, 9));
        
        return "search";
    }
    
    private void addModelForJobPage(Model model, int page, int locationId, int careerId, String keyword) {
        model.addAttribute("cssfile", "company");
        model.addAttribute("careerId", careerId);
        model.addAttribute("locationId", locationId);
        model.addAttribute("keyword", keyword);
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", locationService.getLocations());
    }
    
    private void addPaginationAttribute(Model model, String previous, String next, int select) {
        model.addAttribute("previous", previous);
        model.addAttribute("next", next);
        model.addAttribute("select", select);
    }
}
