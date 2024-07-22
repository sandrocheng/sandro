package sandro.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sandro.website.dao.UserDao;
import sandro.website.domain.Pair;
import sandro.website.domain.User;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class UserContorller {
    private static List<Pair<Integer,String>> USER_STATUS = new ArrayList();
    static{
        USER_STATUS.add(new Pair<Integer,String>(User.STATUS_USING,"使用中"));
        USER_STATUS.add(new Pair<Integer,String>(User.STATUS_STOP,"暂停使用"));
        USER_STATUS.add(new Pair<Integer,String>(User.STATUS_VERIFY,"审核中"));
    }

    //使用spring的Autowire来注入dao
    @Autowired
    UserDao userDao;

    @RequestMapping("/user/user-list")
    public String userList(Model model){
        List<User> users = userDao.getAllUsers();
        model.addAttribute("allUser",users);
        return "/user-list";
    }

    //打开添加用户页面
    @RequestMapping("/user/goto-user-add")
    public String gotouserAddPage(Model model){
        model.addAttribute("user_status",USER_STATUS);
        model.addAttribute("default_status",0);
        return "/user-add";
    }

    @RequestMapping("/user/goto-user-edit")
    public String gotouserEditPage(Model model,long id){
        User user = this.userDao.getUserbyId(id);
        model.addAttribute("user_status",USER_STATUS);
        model.addAttribute("userInfo",user);
        return "/user-edit";
    }

    @PostMapping("/user/edit-user")
    @ResponseBody
    public String editUser(long id,String userName, int gender, String telNo, String email,
                          int status, Date birth,
                          String address,String desc){
        System.out.println("id : " + id
                + "userName : " + userName
                + " , gender : " + gender
                + " , telNo : " + telNo
                + " , email : " + email
                + " , status : " + status
                + " , birth : " + birth
                + " , address : " + address
                + " , desc : " + desc);
        User user = new User(id,userName,null,email,gender,birth,telNo,address,status,desc);
        userDao.editUser(user);
        return "ok";
    }

    @PostMapping("/user/add-user")
    @ResponseBody
    public String addUser(String userName, int gender, String telNo, String email,
                          int status, Date birth,
                          String address,String desc){
        System.out.println("userName : " + userName
                + " , gender : " + gender
                + " , telNo : " + telNo
                + " , email : " + email
                + " , status : " + status
                + " , birth : " + birth
                + " , address : " + address
                + " , desc : " + desc);
//        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd HH:MM:ss");
//        String strDate = formatter.format(birth);
//        System.out.println("Formatted Date: " + strDate);


        User user = new User(0L,userName,null,email,gender,birth,telNo,address,status,desc);
        userDao.addUser(user);
        return "ok";
    }

    @PostMapping("/user/del-user/{id}")
    @ResponseBody
    public String delUser(@PathVariable("id") long id){
        userDao.delUser(id);
        return "ok";
    }
}
