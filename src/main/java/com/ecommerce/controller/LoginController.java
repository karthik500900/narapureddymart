package com.ecommerce.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.ecommerce.model.User;
import com.ecommerce.service.UserService;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    // Shows the login page
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginPage() {
        return "login";
    }

    // Processes the login form
 // 1. Update the login process to redirect to categories
    @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
    public String processLogin(@RequestParam("email") String email,
                               @RequestParam("password") String password,
                               HttpSession session, 
                               Model model) {

        User user = userService.loginUser(email, password);

        if (user != null) {
            // Successful login: Store user in session and go to categories
            session.setAttribute("loggedInUser", user);
            return "redirect:/categories"; 
        } else {
            // Failed login
            model.addAttribute("error", "Invalid Email or Password");
            return "login";
        }
    }

    // 2. Add this new method to show the Categories page
    @RequestMapping(value = "/categories", method = RequestMethod.GET)
    public String showCategoriesPage() {
        return "categories"; // This will look for categories.jsp
    }
    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String showWelcomePage() {
        return "welcome"; // This shows welcome.jsp
    }
        @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // This "forgets" the user's name
        return "redirect:/login"; // Sends them back to the login page
    }
        @RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
    public String showForgotPasswordPage() {
        return "forgotPassword"; // This will look for forgotPassword.jsp in your views folder
    }
        @PostMapping("/reset-password")
        public String resetPassword(@RequestParam("email") String email, 
                                    @RequestParam("newPassword") String newPassword,
                                    Model model) {
            
            // 1. Call your service to update the password in the database
            // Make sure your UserService has this method (see Step 2)
            boolean isUpdated = userService.updatePasswordByEmail(email, newPassword);
            
            if (isUpdated) {
                model.addAttribute("message", "Password updated successfully! You can now login.");
            } else {
                model.addAttribute("error", "Email not found. Please check and try again.");
            }
            
            // 2. Return to the same login page (don't redirect, so we can show the message)
            return "login";
        }
     // Add these to LoginController.java

        @RequestMapping(value = "/edit-profile", method = RequestMethod.GET)
        public String showProfile(HttpSession session, Model model) {
            User user = (User) session.getAttribute("loggedInUser");
            model.addAttribute("user", user);
            return "profile"; // This will look for profile.jsp
        }

        @RequestMapping(value = "/cart", method = RequestMethod.GET)
        public String showCart() {
            return "cart"; // This will look for cart.jsp
        }
    }