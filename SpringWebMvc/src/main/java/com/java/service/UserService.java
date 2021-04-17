package com.java.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import  com.java.pojo.User;
import java.util.List;

/**
 *
 * @author minh
 */
public interface UserService extends UserDetailsService {
    public boolean addUser(User user);
    List<User> getUsers(String username);
}
