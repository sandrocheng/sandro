package sandro.demo.springboot.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用于页面跳转
 */
@Controller
public class RouterController {

    @RequestMapping({"/","index","index.html"})
    public String index(){
        return "index";
    }

    @GetMapping({"/login","/login.html"})
    public String login(Model model){
        return "login";
    }
}
