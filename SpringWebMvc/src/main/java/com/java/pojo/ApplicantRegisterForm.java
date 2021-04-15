package com.java.pojo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author minh
 */
public class ApplicantRegisterForm {
    
    @Size(min = 5, max = 45)
    private String username;
    @NotNull
    private String password;
    @NotNull
    private String rePassword;
    @NotNull
    private String email;
    private String role;
    @NotNull
    private String gender;
    private String experiance;
    @NotNull
    private int careerId;

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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
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

    public int getCareerId() {
        return careerId;
    }

    public void setCareerId(int careerId) {
        this.careerId = careerId;
    }
    
    
}
