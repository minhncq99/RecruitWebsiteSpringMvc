package com.java.controller;

import com.java.pojo.ApplicantRegisterForm;
import com.java.service.CareerService;
import com.java.service.LocationService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author minh
 */
@Controller
@ControllerAdvice
@RequestMapping("/employer")
public class EmployerController {
    
    @Autowired
    private LocationService locationService;
    @Autowired
    private CareerService careerService;
    
    @ModelAttribute
    private void addModelAttribute(Model model) {
        model.addAttribute("cssfile", "employer");
        model.addAttribute("news", "");
    }

    @RequestMapping({"/", "/{action}"})
    public String employerPage(@PathVariable(required = false) String action,
            Authentication auth, Model model) {
        if (action != null && action.equals("statistics")) {
            model.addAttribute("action", "statistics");
        } else if (action != null && action.equals("history")) {
            model.addAttribute("action", "history");
        } else {
            model.addAttribute("action", null);
            model.addAttribute("location", this.locationService.getLocations());
            model.addAttribute("career", this.careerService.getCareers());
        }
        return "employer";
    }
    
    @PostMapping("/addNews")
    public String createNews(Model model, 
                @Valid @ModelAttribute(value = "applicant") ApplicantRegisterForm applicant,
            BindingResult result) {
        return "employer";
    }

}
