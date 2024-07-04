package sandro.springboot.demo1.domain;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component //添加到spring的组件中，由spring统一管理
public class UserInfo {

    @Value("用户默认信息")
    private String desc;

    @Value("100")
    private int money;

    public UserInfo(String desc, int money) {
        this.desc = desc;
        this.money = money;
    }

    public UserInfo() {
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "desc='" + desc + '\'' +
                ", money=" + money +
                '}';
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }
}
