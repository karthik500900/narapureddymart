package com.ecommerce.dao;

import com.ecommerce.model.User;



public interface UserDao {
    void saveUser(User user);
    User validateUser(String email, String password); // New method
    User findUserByEmail(String email); 
    void updateUser(User user); 
}
