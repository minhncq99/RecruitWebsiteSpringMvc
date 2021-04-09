package com.java.controller;

import com.java.service.CareerService;
import com.java.service.WorkLocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author minh
 */
@Controller
@RequestMapping("/register")
public class RegisterController {
    
    @Autowired
    private CareerService careerService;
    
    @Autowired
    private WorkLocationService workLocationService;
    
    @RequestMapping("/")
    public String register(Model model) {
        model.addAttribute("cssfile", "register");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", workLocationService.getLocations());
        return "register";
    }
}
