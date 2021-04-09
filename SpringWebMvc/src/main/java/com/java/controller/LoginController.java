package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author minh
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    
    @RequestMapping("/")
    public String login(Model model) {
        model.addAttribute("cssfile", "login");
        return "login";
    }
}
