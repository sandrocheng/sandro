package sandro.springboot.demo1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller //定义为一个controller
@RequestMapping("hello") //根路径是hello
public class Hello2Controller {

    @GetMapping("hello2")//定义在hello目录下再一层的hello2请求 ,http://localhost:8080/hello/hello2
    @ResponseBody//把返回的字符串做为结果返回给请求方
    public String hello2(){
        return "hello 2";
    }
}
