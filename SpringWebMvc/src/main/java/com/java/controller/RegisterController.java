package com.java.controller;

import com.java.pojo.EmployerRegisterForm;
import com.java.pojo.User;
import com.java.service.CareerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.java.service.LocationService;
import com.java.service.UserService;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

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
    private LocationService workLocationService;
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String register(Model model) {
        model.addAttribute("cssfile", "register");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", workLocationService.getLocations());
        model.addAttribute("employer", new EmployerRegisterForm());
        model.addAttribute("register_employer", "/register/emp");
        model.addAttribute("user", userService.getUsers("minh"));
        return "register";
    }

    @PostMapping(value = "/emp")
    public String employerRegister(Model model,
            @Valid @ModelAttribute(value = "employer") EmployerRegisterForm employer,
            BindingResult result) {
        if (result.hasErrors()) {
            return "register";
        }
        User user = new User();
        user.setUserName(employer.getUserName());
        user.setPassword(employer.getPassword());
        user.setName(employer.getName());
        user.setEmail(employer.getEmail());
        user.setRole("ROLE_EMPLOYER");
        
        userService.addUser(user);
        return "redirect:/";
    }
}
