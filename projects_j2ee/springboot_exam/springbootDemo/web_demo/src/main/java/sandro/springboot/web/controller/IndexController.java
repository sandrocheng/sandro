package sandro.springboot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Arrays;

//在templates目录下的所有页面，只能通过crontroller跳转
//同时还需要模板引擎的支持，springboot默认支持thymeleaf,只要依赖了thymeleaf的starter，就可以直接使用了
@Controller

public class IndexController {

    @GetMapping("/")
    public String index(Model model){
        //普通文本
        model.addAttribute("name","wrold");

        //带转义的字符串
        model.addAttribute("msg1","<h1>带转义的文本</h1>");
        model.addAttribute("msg2","<h1>使用utext : 带转义的文本</h1>");

        model.addAttribute("players", Arrays.asList("sandro","jhye","joy"));
        return "index";
    }
}
