package sandro.springboot.demo1.domain;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Component //添加到spring的组件中，由spring统一管理
/**
 * 该注解指定YAML中属性名，这样就可以在yaml文件中定义数据并注入对象了
 */
@ConfigurationProperties(prefix = "defaultuser")
public class User {
    private String name;

    private Integer age;

    private boolean male;

    private Date birthday;

    private Map<String,Object> map;

    private List<Object> list;

    private UserInfo userInfo;

    public User() {
    }

    public User(String name, Integer age, boolean male, Date birthday, Map<String, Object> map, List<Object> list, UserInfo userInfo) {
        this.name = name;
        this.age = age;
        this.male = male;
        this.birthday = birthday;
        this.map = map;
        this.list = list;
        this.userInfo = userInfo;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", male=" + male +
                ", birthday=" + birthday +
                ", map=" + map +
                ", list=" + list +
                ", userInfo=" + userInfo +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public boolean isMale() {
        return male;
    }

    public void setMale(boolean male) {
        this.male = male;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }

    public List<Object> getList() {
        return list;
    }

    public void setList(List<Object> list) {
        this.list = list;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }
}
