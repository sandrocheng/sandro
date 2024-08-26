package sandro.springsecurity.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminNavigateController {
    @GetMapping({"/admin/dashboard_2.html"})
    public String dashboard_2(){
        return "/admin/dashboard_2";
    }
}
