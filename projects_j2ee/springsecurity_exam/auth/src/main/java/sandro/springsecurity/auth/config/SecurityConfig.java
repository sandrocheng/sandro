package sandro.springsecurity.auth.config;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import java.io.IOException;

/**
 * 使用@Configuration注解将SecurityConfig声明周期托管给spring,并声明该类为配置类
 */
@Configuration
@EnableWebSecurity //SpringSecurity的配置类 开启SpringSecurity【自带大量过滤器链:责任链模式】
public class SecurityConfig {
    /**
     * 使用BCryptPasswordEncoder做为springsecurity密码验证的加密器
     * 使用@Bean注解后，springsecurity会自动得到该实例
     * @return
     */
    @Bean
    public PasswordEncoder getPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }
    /**
     * 配置安全过滤器
     * @param http
     * @return
     * @throws Exception
     */
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {

        //配置login页面，index页面,配置资源文件等路径不需要验证
        http.authorizeHttpRequests((authorize) -> authorize
                .requestMatchers("/admin/**").hasRole("admin")//admin权限设置
                .requestMatchers("/user/**").hasRole("user")//user权限设置
//                .requestMatchers("/user/**").hasAnyRole("user","admin")//这么写就是多个角色都可以访问/user/**中的接口
                .requestMatchers(
                        "/css/**",
                        "font-awesome/**",
                        "/fonts/**",
                        "/fonts/**",
                        "/js/**",
                        "/img/**",
                        "/login")//登陆页面需要忽略
                .permitAll()//以上请求都不需要登陆
                .anyRequest().authenticated()//其他请求都需要授权配置
        );


        http.formLogin((form) -> form
                .loginPage("/login").permitAll()//指定登陆页面的url
                .loginProcessingUrl("/dologin")//指定登陆接口,form提交表单的action
                .defaultSuccessUrl("/index.html")//指定登陆成功后跳转的页面
                .failureHandler(new AuthenticationFailureHandler() {
                    //登陆失败的回调
                    //不设置也可以,因为登陆失败的时候springsecurity 会在返回的登陆页路径上加上?error,如：/login?error
                    @Override
                    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
                        // 设置响应状态码为302，表示临时重定向
                        response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
                        // 设置重定向的URL
                        String redirectURL = "/login?error";
                        response.setHeader("Location", redirectURL);

                    }
                })
        );

        //http.csrf(e->e.disable());//关闭跨域漏洞防御,一般分布式前后台分离的时候需要关闭
        http.logout(logout->logout.invalidateHttpSession(true));//logout的时候session中的数据清空

        SecurityFilterChain chan = http.build();
        return chan;
    }
}
