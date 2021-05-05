package com.java.pojo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author minh
 */
public class ApplicantRegisterForm {
    
    @Size(min = 5, max = 20, message = "{error.invalid.username.size}")
    private String username;
    @Size(min = 5, max = 45, message = "{error.invalid.password.size}")
    private String password;
    @Size(min = 5, max = 45, message = "{error.invalid.password.size}")
    private String rePassword;
    @Pattern(regexp = "^[A-Za-z0-9+_.-]+@(.+)$" ,message = "{error.invalid.email.format}")
    private String email;
    @Size(min =1, message = "{error.notnull}")
    private String name;
    @Size(min =1, message = "{error.notnull}")
    private String gender;
    private String description;
    private String experiance;
    @Min(value = 1, message = "{error.notnull}")
    private int careerId;
    private MultipartFile cv;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRePassword() {
        return rePassword;
    }

    public void setRePassword(String rePassword) {
        this.rePassword = rePassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getExperiance() {
        return experiance;
    }

    public void setExperiance(String experiance) {
        this.experiance = experiance;
    }

    public MultipartFile getCv() {
        return cv;
    }

    public void setCv(MultipartFile cv) {
        this.cv = cv;
    }

    public int getCareerId() {
        return careerId;
    }

    public void setCareerId(int careerId) {
        this.careerId = careerId;
    }
}
