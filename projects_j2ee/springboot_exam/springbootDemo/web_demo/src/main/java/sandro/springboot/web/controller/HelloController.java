package sandro.springboot.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //直接返回字符串给浏览器
public class HelloController {
    @GetMapping("/hello")
    public String hello(){
        return "hello web！";
    }
}
