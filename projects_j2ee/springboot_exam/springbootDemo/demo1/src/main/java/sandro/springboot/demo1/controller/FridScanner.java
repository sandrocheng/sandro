package sandro.springboot.demo1.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

//给蓝牙扫描前端提供测试接口
@RestController
public class FridScanner {

    @RequestMapping("/login")
    public String hello(){
        return "login";
    }
}
