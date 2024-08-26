package sandro.springsecurity.auth.domain;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;

/**
 * springsecurity的UserDetails实现类
 */
public class LoginUser implements UserDetails {

    private String password;
    private String username;

    private Collection<GrantedAuthority> authList = new ArrayList<>();

    public LoginUser(String username,String password){
        this.password = password;
        this.username = username;
    }

    public void addRole(String role){
        //设置的时候是"admin" ,但是取的时候前面要加"ROLE_"前缀
        authList.add(new MyAuthority("ROLE_" + role));
    }

    /**
     * 返回权限信息
     * @return
     */
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authList;
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
        return this.username;
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

    private class MyAuthority implements GrantedAuthority{
        private String role;
        private MyAuthority(String role){
            this.role = role;
        }

        @Override
        public String getAuthority() {
            return role;
        }
    }
}
