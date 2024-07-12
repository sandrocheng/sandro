package sandro.website.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
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

    /**
     * 注册拦截器
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //在所有请求中都配置登陆拦截器
        //登陆请求,登陆页面不拦截
        //静态资源不拦截
        registry.addInterceptor(new LoginHandlerInterceptor())
                 .addPathPatterns("/**")
                 .excludePathPatterns("/user/login","/login","/login.html"
                 ,"/css/**","/font/**","/js/**","/layer/**","/plugin/**","/images/**");
    }
}
