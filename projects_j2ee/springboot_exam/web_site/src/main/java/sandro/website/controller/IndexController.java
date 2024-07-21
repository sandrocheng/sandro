package sandro.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    @GetMapping({"/index.html","/","/index"})
    public String index(Model model){
        return "index";
    }

    @GetMapping({"/welcome.html","/welcome"})
    public String welcome(Model model){
        return "welcome";
    }
}
