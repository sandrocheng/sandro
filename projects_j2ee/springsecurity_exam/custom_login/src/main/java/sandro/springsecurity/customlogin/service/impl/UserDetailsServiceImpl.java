package sandro.springsecurity.customlogin.service.impl;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import sandro.springsecurity.customlogin.domain.LoginUser;

/**
 * 实现UserDetailsService接口，用于用户登陆的密码验证
 */
@Service //注入到容器后，springsecurity会自动使用这个类的实例来进行用户验证
public class UserDetailsServiceImpl implements UserDetailsService {

    /**
     * 在登陆阶段会通过这个接口把用户名传递进来，在这个接口中去实现用户信息的查找
     * @param username
     * @return
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        System.out.println("[loadUserByUsername]" + username);
        if(!username.equals("sandro")){//模拟用户验证失败
            //在认证鉴权的过程中，所有的异常会被ExceptionTranslationFilter捕获
            //捕获以后，异常的msg会返回给页面，提示登陆失败
            throw new RuntimeException("没有该用户");
        }

        //查询到用户信息后，需要封装UserDetail对象返回给springsecurity
        //springsecurity会继续验证密码
        //该密码是 1234 通过PasswordEncoder 加密后的字符串，一般用户密码保存的也是这个加密后的字符串
        //用户注册的时候，密码也需要通过PasswordEncoder 加密后再保存
        return new LoginUser("$2a$10$jrNg.jRx1VtAx0fY3anvoO4BDcLcYOBBgUqMTh3k6EJzMYmKmjalG");
    }
}
