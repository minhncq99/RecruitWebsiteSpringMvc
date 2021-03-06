package com.java.controller;

import com.java.pojo.ApplicantRegisterForm;
import com.java.pojo.EmployerRegisterForm;
import com.java.service.ApplicantService;
import com.java.service.CareerService;
import com.java.service.EmployerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.java.service.LocationService;
import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

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
    @Autowired
    private ApplicantService applicantService;

    @ModelAttribute
    public void addModalAtribute(Model model) {
        model.addAttribute("cssfile", "register");
        model.addAttribute("careers", careerService.getCareers());
        model.addAttribute("locations", workLocationService.getLocations());
        model.addAttribute("employer", new EmployerRegisterForm());
        model.addAttribute("register_employer", "/register/emp");
        model.addAttribute("applicant", new ApplicantRegisterForm());
        model.addAttribute("register_applicant", "/register/app");
    }

    @RequestMapping({"/", "/{form}"})
    public String register(@PathVariable(required = false) String form, Model model) {
        if (form != null && form.equals("empl")) {
            model.addAttribute("form", "empl");
        } else {
            model.addAttribute("form", null);
        }
        return "register";
    }

    @PostMapping("/emp")
    public String employerRegister(Model model, @Valid @ModelAttribute(value = "employer") EmployerRegisterForm employer, BindingResult result) {
        model.addAttribute("form", "empl");
        if (result.hasErrors()) {
            return "register";
        }
        if (!this.employerService.addEmployer(employer)) {
            model.addAttribute("otherError", "Tao t??c th??m nh?? tuy???n d???ng ch??a th??nh c??ng vui long th??? l???i");
            return "register";
        }
        return "redirect:/";
    }

    @PostMapping("/app")
    public String applicantRegister(Model model,
            @Valid @ModelAttribute(value = "applicant") ApplicantRegisterForm applicant,
            BindingResult result, HttpServletRequest request) {
        if (result.hasErrors()) {
            return "register";
        }
        MultipartFile cv = applicant.getCv();
        String rootDir = request.getSession()
                .getServletContext().getRealPath("/");
        if (cv != null && !cv.isEmpty()) {
            try {
                cv.transferTo(new File(rootDir + "resources/cv/"
                        + applicant.getUsername() + ".pdf"));
            } catch (IOException | IllegalStateException ex) {
                System.err.println(ex.getMessage());
            }
        }
        if (!this.applicantService.addApplicant(applicant)) {
            model.addAttribute("otherError", "Tao t??c th??m nh?? ???ng vi??n ch??a th??nh c??ng vui long th??? l???i");
            return "register";
        }
        return "redirect:/";
    }
}
