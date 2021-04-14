package com.java.repository;

import com.java.pojo.User;
import java.util.List;

/**
 *
 * @author minh
 */
public interface UserRepository {
    boolean addUser(User user);
    
    List<User> getUsers(String userName);
}
