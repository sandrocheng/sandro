package sandro.springboot.jdbc_demo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

/**
 *RestController和‌Controller的主要区别在于它们的返回值处理和用途。
 返回值处理：
 @RestController注解将所有处理请求的方法默认解析为将方法返回值直接作为响应体内容返回，通常用于构建RESTful API，返回的数据通常是JSON或‌XML格式。
 这种注解相当于@Controller和@ResponseBody的结合，其中@ResponseBody是一个针对方法返回值进行处理的注解，使得返回的内容可以直接作为响应体输出。‌

 @Controller注解的返回值通常会经过视图解析器解析，返回的数据通常是渲染后的HTML页面。
 这种注解主要用于传统的‌MVC架构，通过页面模板引擎将数据渲染成HTML页面返回给用户。‌

 用途和适用场景：
 RestController适用于构建RESTful风格的应用，处理输出和输入的JSON或XML数据，适用于前后端分离的架构，主要用于Web服务API的设计。
 Controller则更多地与视图渲染和页面跳转相关，适用于传统的MVC架构，通过页面模板引擎将数据渲染成HTML页面返回给用户。

 总结来说，选择使用RestController还是Controller取决于你的应用是否需要直接返回数据给客户端（如JSON响应）或者是否需要进行页面渲染。
 */
@RestController//
public class JDBCController {

    @Autowired
    JdbcTemplate jdbcTemplate;

    //查询数据库的所有信息
    @GetMapping("/user-list")
    public List<Map<String,Object>> userList(){
        String sql = "select * from t_user";
        return jdbcTemplate.queryForList(sql);
    }

    //增加一个用户
    @GetMapping("/user-add")
    public List<Map<String,Object>> addUser(){
        String sql = "insert into t_user(user_name,user_type) values ('%s',%d)";
        Random r = new Random();
        sql = String.format(sql, UUID.randomUUID(),r.nextInt(2));
        jdbcTemplate.update(sql);
        return userList();
    }

    //修改用户信息
    @GetMapping("/user-update")
    public List<Map<String,Object>> updateUser(){
        String sql = "update t_user set user_type=? where user_type=?";

        Object[] parms = new Object[2];
        parms[0]=1;
        parms[1]=0;
        jdbcTemplate.update(sql,parms);
        return userList();
    }

    @GetMapping("/user-del")
    public List<Map<String,Object>> delUser(){
        String sql = "select max(id) as id from t_user";
        List<Map<String,Object>> r = jdbcTemplate.queryForList(sql);
        if(r!=null && r.size() > 0){
            Object id = r.get(0).get("id");
            sql = "delete from t_user where id=?";
            jdbcTemplate.update(sql,id);
        }

        return userList();
    }
}
