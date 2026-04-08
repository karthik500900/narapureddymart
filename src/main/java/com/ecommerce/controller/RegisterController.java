package com.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecommerce.model.User;
import com.ecommerce.service.UserService;

@Controller
public class RegisterController {

    @Autowired
    private UserService userService;

    // UPDATE: Add "/register" here so the button can find this page
    @RequestMapping(value = {"/", "/register"}, method = RequestMethod.GET)
    public String showRegisterPage(Model model) {
        model.addAttribute("user", new User()); 
        return "register";
    }

    // This remains the same to handle the form submission
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String processRegister(@ModelAttribute("user") User user, Model model) {
        
        User existingUser = userService.findUserByEmail(user.getEmail());

        if (existingUser != null) {
            return "user-exists"; 
        } else {
            userService.registerUser(user);
            model.addAttribute("userName", user.getName());
            return "success";
        }
    }
}