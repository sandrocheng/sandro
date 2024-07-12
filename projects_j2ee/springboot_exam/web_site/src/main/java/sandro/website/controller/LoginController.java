package sandro.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

    @GetMapping({"/login.html","/login"})
    public String login(Model model){
        return "login";
    }

    @RequestMapping("/user/login")
//    @ResponseBody //直接返回字符串给浏览器，可以用这个注解测试请求地址是否有问题
    //spring mvc可以直接设置参数对应form中表单数据的name属性
    public String userLogin(@RequestParam("userName") String userName,
                            @RequestParam("password") String password,
                            Model model){
        if(!userName.isEmpty() && !password.isEmpty()){
            return "redirect:/index"; //使用redirect: 表示重定向,重定向后参数不会带到新的页面中
        }else{
            model.addAttribute("msg","error");
            return "/login.html";
        }
    }
}
