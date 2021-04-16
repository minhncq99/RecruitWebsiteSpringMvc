package com.java.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author minh
 */
@Controller
@ControllerAdvice
@RequestMapping("/employer")
public class EmployerController {
    
    @ModelAttribute
    private void addModelAttribute(Model model) {
        model.addAttribute("cssfile", "employer");
    }
    
    @RequestMapping("/")
    public String employerPage(Authentication auth, Model model) {
        model.addAttribute("username", auth.getName()); 
        return "employer";
    }
    
}
