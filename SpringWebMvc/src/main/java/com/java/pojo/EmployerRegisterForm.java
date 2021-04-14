package com.java.pojo;

import jakarta.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

/**
 *
 * @author minh
 */
public class EmployerRegisterForm {

    @Size(min = 8, max = 45, message = "Tên không hợp lệ")
    @NotBlank(message = "Trường dữ liệu không được phép bỏ trống!")
    private String userName;
    @NotBlank(message = "Trường dữ liệu không được phép bỏ trống!")
    private String password;
    private String rePassword;
    private String name;
    private String email;
    private String description;
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
