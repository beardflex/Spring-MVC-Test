package com.github.beardflex.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    
    @RequestMapping(value = "/loginPage", method = RequestMethod.GET)
    public ModelAndView login(
              @RequestParam(value = "error", required = false) String error,
              @RequestParam(value = "logout", required = false) String logout) {
        
        ModelAndView model = new ModelAndView();
        if(error != null) {
            model.addObject("error", "Invalid username or password.");
        }
        if(logout != null) {
            model.addObject("message", "You have been logged out successfully.");
        }
        
        model.setViewName("loginPage");
        
        return model;
    }
    
    @RequestMapping(value = "processLogin", method = RequestMethod.POST)
    public ModelAndView processLogin(
              @RequestParam(value = "username", required = true) String username,
              @RequestParam(value = "password", required = true) String password) {
        
        ModelAndView model = new ModelAndView();
        
        if(username.equals("droche") && password.equals("Password!")) {
            model.setViewName("index");
        } else {
            model.setViewName("loginPage");
            model.addObject("error", "Invalid username or password.");
        }
        
        return model;
    }
    
    
}