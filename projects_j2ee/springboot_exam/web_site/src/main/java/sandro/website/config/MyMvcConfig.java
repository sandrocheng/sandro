package sandro.website.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyMvcConfig implements WebMvcConfigurer {

    /**
     * 使用spring 的 Bean注解，将该方法托管给spring调用,由srping装载Resolver
     * 注意:方法名必须是localeResolver
     * @return
     */
    @Bean
    public MyLocaleResolver localeResolver(){
        return new MyLocaleResolver();
    }
}
