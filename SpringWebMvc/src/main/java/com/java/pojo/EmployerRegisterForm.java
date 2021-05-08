package com.java.pojo;

import com.java.validator.EmployerRegister;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author minh
 */
@EmployerRegister
public class EmployerRegisterForm {

    @Size(min = 5, max = 20, message = "{error.invalid.username.size}")
    private String userName;
    @Size(min = 5, max = 45, message = "{error.invalid.password.size}")
    private String password;
    @Size(min = 5, max = 45, message = "{error.invalid.password.size}")
    private String rePassword;
    @Size(min =1, message = "{error.notnull}")
    private String name;
    @Pattern(regexp = "^[A-Za-z0-9+_.-]+@(.+)$" ,message = "{error.invalid.email.format}")
    private String email;
    private String description;
    @Min(value = 1, message = "{error.notnull}")
    private int location_id;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getLocation_id() {
        return location_id;
    }

    public void setLocation_id(int location_id) {
        this.location_id = location_id;
    }
}
