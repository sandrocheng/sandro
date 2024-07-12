package sandro.website.config;

import ch.qos.logback.core.util.StringUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.LocaleResolver;

import java.util.Locale;

/**
 *
 */
public class MyLocaleResolver implements LocaleResolver {

    //解析请求
    @Override
    public Locale resolveLocale(HttpServletRequest request) {
        //获取请求中的语言参数
        String language = request.getParameter("l");
        Locale locale  = Locale.getDefault();//如果没有就使用默认的语言配置

        //如果请求的链接携带了地区化的参数 l
        if(!StringUtil.isNullOrEmpty(language)){
            //参数中的值是用用_分隔的，如：zh_CN
            String[] split =language.split("_");
            //使用得到国家和地区码
            locale = new Locale(split[0],split[1]);
        }
        return locale;
    }

    @Override
    public void setLocale(HttpServletRequest request, HttpServletResponse response, Locale locale) {

    }
}
