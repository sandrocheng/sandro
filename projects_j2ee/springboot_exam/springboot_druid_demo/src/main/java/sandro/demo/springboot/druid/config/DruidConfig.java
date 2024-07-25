package sandro.demo.springboot.druid.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.jakarta.StatViewServlet;
import com.alibaba.druid.support.jakarta.WebStatFilter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

@Configuration
public class DruidConfig {

    @Bean
    //将DruidDataSource的属性和yaml中进行映射，这样yaml就能识别druid的配置信息了
    @ConfigurationProperties(prefix = "spring.datasource")
    public DataSource druidDataSource() {
        return new DruidDataSource();
    }

    /**
     * 后台监控功能
     */
    @Bean
    public ServletRegistrationBean statViewServlet() {
        //固定写法，创建一个视图 bean StatViewServlet是druid提供的servlet,并映射/druid/*的路径
        //这样就可以访问druid提供的监控页面了
        //因为springboot内置了servlet容器，所以没有web.xml，需要使用这种方法替代
        //配置好后访问 http://localhost:8080/druid
        ServletRegistrationBean<StatViewServlet> bean = new ServletRegistrationBean<>(new StatViewServlet(),
                "/druid/*");

        //设置登陆的账号和密码
        Map<String, String> initParameters  = new HashMap<>();
        initParameters.put("loginUsername","admin");
        initParameters.put("loginPassword","123456");

        initParameters.put("allow","");//任何人都能访问，也可以配置localhost，只有本地能访问
        bean.setInitParameters(initParameters);
        return bean;
    }

    /**
     * filter
     * 使用WebStatFilter，来过滤，参数可以查看WebStatFilter的常量
     */
    @Bean
    public FilterRegistrationBean webStatFilter(){
        FilterRegistrationBean bean =  new FilterRegistrationBean<>();
        bean.setFilter(new WebStatFilter());

        Map<String, String> initParameters = new HashMap<>();
        //这些不进行统计
        initParameters.put("exclusions","*.js,*.css,/druid/**");
        bean.setInitParameters(initParameters);
        return bean;
    }
}
