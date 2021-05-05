package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author minh
 */
@Controller
@RequestMapping("/news-details")
public class NewsDetailsController {
    
    @RequestMapping("")
    public String defaultPage(Model model) {
        model.addAttribute("cssfile", "newsdetails");
        return "newsdetail";
    }
}
