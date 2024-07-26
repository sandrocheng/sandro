package sandro.demo.springboot.mybatis.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import sandro.demo.springboot.mybatis.domain.User;

import java.util.List;

@Mapper //表示当前类是Mybatis的 mapper类
        //也可以在SpringBootApplication上使用@MapperScan("sandro.demo.springboot.mybatis.mapper")
        //来扫描加载mapper下的接口类
@Repository  //代表当前类是一个dao
public interface UserMapper {

    List<User> queryUserList();

    int addUser(User user);

    Integer queryMaxID();

    int delUser(int maxID);

    int updateUser();
}
