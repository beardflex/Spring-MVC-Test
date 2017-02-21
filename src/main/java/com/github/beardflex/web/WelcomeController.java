package com.github.beardflex.web;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeController {
    
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Map<String, Object> model) {
        
        model.put("title", "Test Spring MVC");
        model.put("msg", "This is a test Spring MVC application.");
        
        return "index";
    }
    
}