package com.java.controller;

import com.java.pojo.EmployerRegisterForm;
import com.java.service.CareerService;
import com.java.service.EmployerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.java.service.LocationService;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author minh
 */
@Controller
@ControllerAdvice
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private CareerService careerService;
    @Autowired
    private LocationService workLocationService;
    @Autowired
    private EmployerService employerService;

    @ModelAttribute
    public void addModalAtribute(Model model) {
        model.addAttribute("cssfile", "register");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", workLocationService.getLocations());
        model.addAttribute("employer", new EmployerRegisterForm());
        model.addAttribute("register_employer", "/register/emp");
    }
    
    @RequestMapping("/")
    public String register(Model model) {
        
        return "register";
    }

    @PostMapping(value = "/emp")
    public String employerRegister(Model model, 
            @Valid @ModelAttribute(value = "employer") EmployerRegisterForm employer,
            BindingResult result) {
        if (result.hasErrors()) 
            return "register";
        boolean a = !this.employerService.addEmployer(employer);
        if (a) {
            return "register";
        }
        return "redirect:/";
    }
}
