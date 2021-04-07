package com.java.controller;

import com.java.service.CareerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author minh
 */
@Controller
public class HomeController {
    
    @Autowired
    private CareerService careerService;
    
    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("message", "Message");
        model.addAttribute("careers", careerService.getCareers());
        return "index";
    }
}