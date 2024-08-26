package sandro.springsecurity.customlogin.domain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Collection;

/**
 * springsecurity的UserDetails实现类
 */
public class LoginUser implements UserDetails {

    private String password;

    public LoginUser(String password){
        this.password = password;
    }

    /**
     * 返回权限信息
     * @return
     */
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    /*
     * 返回当前用户的密码
     */
    @Override
    public String getPassword() {
//        return "{noop}"+password; 一般数据库中的密码实际上是经过加密的，使用{noop}前缀，springsecurity就会直接比对密码
        return password;
    }

    //返回当前用户名
    @Override
    public String getUsername() {
        return "sandro";
    }

    /**
     * 是否过期，true,没有过期
     * @return
     */
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    /**
     *
     * @return
     */
    @Override
    public boolean isAccountNonLocked() {
        return UserDetails.super.isAccountNonLocked();
    }

    /**
     * 证书是否在有效期内
     * @return
     */
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    /**
     * 是否可用
     * @return
     */
    @Override
    public boolean isEnabled() {
        return true;
    }
}
