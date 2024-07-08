package sandro.springboot.web.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.Locale;

/**
 * 扩展springMVC
 * 需要实现WebMvcConfigurer接口,然后就可以重写该接口的方法，实现自定义的内容
 * 实现自定义视图解析器的配置
 */
@Configuration //使用spring注解，把当前类声明为一个配置类
public class MyMvcConfigForViewResolver implements WebMvcConfigurer {

    @Bean //声明一个bean由spring管理，这个bean是MyViewResolver的实例
    public ViewResolver myViewResolver(){
        //在这里可以debug，看到被调用了，说明自定义的视图解析器会被使用，因为返回null，所以spring会再调用其他视图解析器
        return new MyViewResolver();
    }



    /**
     * 实现一个自定义的视图解析器
     */
    public static class MyViewResolver implements ViewResolver {

        @Override
        public View resolveViewName(String viewName, Locale locale) throws Exception {
            return null;
        }
    }
}
