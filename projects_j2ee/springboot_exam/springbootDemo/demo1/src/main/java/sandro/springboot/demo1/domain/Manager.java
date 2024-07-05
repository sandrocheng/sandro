package sandro.springboot.demo1.domain;


import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component //添加到spring的组件中，由spring统一管理
/**
 * 该注解指定YAML中属性名，这样就可以在yaml文件中定义数据并注入对象了
 */
@ConfigurationProperties(prefix = "default-manager")
public class Manager {
    private String managerName;
    private int managerId;

    public Manager() {
    }

    public Manager(String managerName, int managerId) {
        this.managerName = managerName;
        this.managerId = managerId;
    }

    public Manager(String managerName) {
        this.managerName = managerName;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public int getManagerId() {
        return managerId;
    }

    public void setManagerId(int managerId) {
        this.managerId = managerId;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "managerName='" + managerName + '\'' +
                ", managerId=" + managerId +
                '}';
    }
}
