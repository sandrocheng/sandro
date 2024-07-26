package sandro.demo.springboot.mybatis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import sandro.demo.springboot.mybatis.mapper.UserMapper;
import sandro.demo.springboot.mybatis.domain.User;

import java.util.List;
import java.util.Random;
import java.util.UUID;

@RestController
public class UserController {

    @Autowired
    private UserMapper userMapper;

    @GetMapping("/")
    public List<User>  userList(){
        List<User> list = userMapper.queryUserList();
        return list;
    }

    @GetMapping("/add")
    public List<User>  addUser(){
        User u = new User();
        u.setUserName(UUID.randomUUID().toString());
        u.setUserType(new Random().nextInt(2));
        int r = userMapper.addUser(u);
        System.out.println("add : " + r);
        return userList();
    }

    @GetMapping("/update")
    public List<User>  update(){
        int r = userMapper.updateUser();
        System.out.println("update : " + r);
        return userList();
    }

    @GetMapping("/del")
    public List<User>  del(){
        Integer id = userMapper.queryMaxID();
        System.out.println("maxid : " + id);
        if(id!=null){
            int r = userMapper.delUser(id);
            System.out.println("del: " + r);
        }

        return userList();
    }
}
