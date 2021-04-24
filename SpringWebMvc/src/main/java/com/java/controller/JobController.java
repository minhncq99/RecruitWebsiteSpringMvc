/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.controller;

import com.java.service.CareerService;
import com.java.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ACER
 */
@Controller
@RequestMapping("/job")
public class JobController {
    
    @Autowired
    private CareerService careerService;
    
    @Autowired
    private LocationService locationService;
    
    
    @RequestMapping("/")
    public String job(Model model) {
        model.addAttribute("cssfile", "job");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", locationService.getLocations());
        return "job";
    }
}
