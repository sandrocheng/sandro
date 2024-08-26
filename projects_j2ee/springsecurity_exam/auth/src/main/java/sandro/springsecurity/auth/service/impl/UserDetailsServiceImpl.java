package sandro.springsecurity.auth.service.impl;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import sandro.springsecurity.auth.domain.LoginUser;

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

        //密码都是1234
        LoginUser user = new LoginUser(username,"$2a$10$jrNg.jRx1VtAx0fY3anvoO4BDcLcYOBBgUqMTh3k6EJzMYmKmjalG");
        if(username.equals("sandro")){
            user.addRole("user");//
        } else if (username.equals("admin")) {
            user.addRole("admin");
        }else{
            //在认证鉴权的过程中，所有的异常会被ExceptionTranslationFilter捕获
            //捕获以后，异常的msg会返回给页面，提示登陆失败
            throw new RuntimeException("没有该用户");
        }

        return user;
    }
}
