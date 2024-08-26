package sandro.demo.springboot.springsecurity.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

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

}
