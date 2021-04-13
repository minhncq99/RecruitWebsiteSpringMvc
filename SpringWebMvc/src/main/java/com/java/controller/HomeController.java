package com.java.controller;

import com.java.service.CareerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.java.service.LocationService;

/**
 *
 * @author minh
 */
@Controller
public class HomeController {
    
    @Autowired
    private CareerService careerService;
    
    @Autowired
    private LocationService workLocationService;
    
    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("cssfile", "index");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", workLocationService.getLocations());
        return "index";
    }
}
