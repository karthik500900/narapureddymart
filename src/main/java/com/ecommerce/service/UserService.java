package com.ecommerce.service;

import com.ecommerce.model.Order;
import com.ecommerce.model.User;



public interface UserService {
    // This method signature must match the one in your Impl class exactly
    void registerUser(User user); 
    User findUserByEmail(String email);
    User loginUser(String email, String password);
    void saveOrder(Order order);
    
    boolean updatePasswordByEmail(String email, String newPassword);
}
