/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ACER
 */
@Controller
@RequestMapping("/profile")
public class ProfileController {
        
    @RequestMapping("/")
    public String login(Model model) {
        model.addAttribute("cssfile", "profile");
        return "profile";
    }
}
