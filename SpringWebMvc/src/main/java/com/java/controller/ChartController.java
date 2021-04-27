package com.java.controller;
// import com.java.service.CareerService;
// import com.java.service.WorkLocationService;
// import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ACER
 */
@Controller
@RequestMapping("/chart")
public class ChartController {
    
    // @Autowired
    // private CareerService careerService;
    
    // @Autowired
    // private WorkLocationService workLocationService;
    
    
    @RequestMapping("/")
    public String chart(Model model) {
        model.addAttribute("cssfile", "chart");
        // model.addAttribute("careers", careerService.getCareers());
        // model.addAttribute("locations", workLocationService.getLocations());
        return "chart";
    }
}
