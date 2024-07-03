package sandro.springboot.demo1.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //该注解返回字符串到页面
public class HelloController {

    @RequestMapping("/hello")
    public String hello(){
        return "hello,world";
    }
}
