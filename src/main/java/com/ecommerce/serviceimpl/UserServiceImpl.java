package com.ecommerce.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.dao.UserDao;
import com.ecommerce.model.User;
import com.ecommerce.service.UserService;

@Service 
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao; // This links to your UserDaoImpl

    @Override
    public void registerUser(User user) {
        // This is the line that actually triggers the database save
        userDao.saveUser(user);
    }
    
    @Override
    public User loginUser(String email, String password) {
        return userDao.validateUser(email, password);
    }
    
    @Override
    public User findUserByEmail(String email) {
        // This tells the Service to call the DAO method we fixed earlier
        return userDao.findUserByEmail(email); 
    }
    @Override
    public boolean updatePasswordByEmail(String email, String newPassword) {
        // We use the 'userDao' variable that is already at the top of this class
        User user = userDao.findUserByEmail(email); 
        
        if (user != null) {
            user.setPassword(newPassword);
            userDao.updateUser(user); // Use the method we added in Step 1
            return true;
        }
        return false;
    }
    

}