package sandro.springboot.web.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyMvcConfigForViewController implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        //当浏览器发送/sandro,跳转到index页面 ,index也可以是templates里的模板文件
        registry.addViewController("/sandro").setViewName("index");
    }
}
