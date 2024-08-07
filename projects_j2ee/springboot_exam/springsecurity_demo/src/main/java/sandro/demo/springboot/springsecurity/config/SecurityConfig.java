package sandro.demo.springboot.springsecurity.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.SecurityBuilder;
import org.springframework.security.config.annotation.web.WebSecurityConfigurer;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@Configuration  //配置为spring的配置类
@EnableWebSecurity //
public class SecurityConfig implements WebSecurityConfigurer {
    @Override
    public void init(SecurityBuilder builder) throws Exception {

    }

    @Override
    public void configure(SecurityBuilder builder) throws Exception {


    }


}
