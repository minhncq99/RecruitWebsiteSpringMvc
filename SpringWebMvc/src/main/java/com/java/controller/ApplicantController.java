package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author minhz
 */
@Controller
@RequestMapping("/applicant")
public class ApplicantController {
    
    @RequestMapping("/")
    public String defaultPage(Model model) {
        return "applicant";
    }
}
