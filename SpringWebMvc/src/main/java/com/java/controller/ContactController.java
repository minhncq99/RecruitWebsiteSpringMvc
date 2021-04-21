/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.controller;

import com.java.service.CareerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.java.service.LocationService;

/**
 *
 * @author ACER
 */
@Controller
@RequestMapping("/contact")
public class ContactController {
    
    @Autowired
    private CareerService careerService;
    
    @Autowired
    private LocationService workLocationService;
    
    
    @RequestMapping("/")
    public String contact(Model model) {
        model.addAttribute("cssfile", "contact");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", workLocationService.getLocations());
        return "contact";
    }
}
