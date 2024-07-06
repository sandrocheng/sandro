package sandro.springboot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

//在templates目录下的所有页面，只能通过crontroller跳转
//同时还需要模板引擎的支持，springboot默认支持thymeleaf,只要依赖了thymeleaf的starter，就可以直接使用了
@Controller

public class IndexController {

    @GetMapping("/")
    public String index(Model model){
        model.addAttribute("name","wrold");
        return "index";
    }
}
