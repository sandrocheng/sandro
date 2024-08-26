package sandro.springsecurity.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserNavigateController {
    @GetMapping({"/user/dashboard_3.html"})
    public String dashboard_3(){
        return "/user/dashboard_3";
    }
}
