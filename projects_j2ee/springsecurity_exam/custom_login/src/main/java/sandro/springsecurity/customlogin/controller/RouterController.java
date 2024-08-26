package sandro.springsecurity.customlogin.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Enumeration;

/**
 * 用于页面跳转
 */
@Controller
public class RouterController {

    @GetMapping({"/","index","index.html"})
    public String index(){
        return "index";
    }

    @GetMapping({"/login"})
    public String login(HttpServletRequest request,Model model){
        if(hasLoginSuccess()){
            return "redirect:/index";
        }
        if(isLoginError(request)){
            model.addAttribute("errormsg","登陆失败，用户名或密码错误");
        }
        return "login";
    }

    private boolean isLoginError(HttpServletRequest request){
        Enumeration<String> parms = request.getParameterNames();
        while(parms.hasMoreElements()){
            String parm = parms.nextElement();
            if(parm.equals("error")){
                return true;
            }
        }
        return false;
    }

    private boolean hasLoginSuccess(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication!=null && authentication.isAuthenticated() && authentication.getPrincipal()!=null){
            if(authentication.getPrincipal().equals("anonymousUser")){
                //未登录的情况下，是匿名用户
                return false;
            }
            return true;
        }
        return false;
    }

}
