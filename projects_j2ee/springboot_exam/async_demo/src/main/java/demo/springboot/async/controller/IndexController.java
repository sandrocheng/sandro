package demo.springboot.async.controller;

import demo.springboot.async.AsyncDemoApplication;
import demo.springboot.async.service.AsyncService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {

    @Autowired
    AsyncService mAsyncService;

    @RequestMapping("/")
    public String index(){
        System.out.println(AsyncDemoApplication.getCurTimeStr() + " : start doSomething");
        mAsyncService.doSomething();
        System.out.println(AsyncDemoApplication.getCurTimeStr() + " : after doSomething");
        return "success";
    }
}
