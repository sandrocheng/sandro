package sandro.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import sandro.website.dao.UserDao;
import sandro.website.domain.User;

import java.util.List;

@Controller
public class UserContorller {

    //使用spring的Autowire来注入dao
    @Autowired
    UserDao userDao;

    @RequestMapping("/user/user-list")
    public String userList(Model model){
        List<User> users = userDao.getAllUsers();
        model.addAttribute("allUser",users);
        return "/user-list";
    }
}
