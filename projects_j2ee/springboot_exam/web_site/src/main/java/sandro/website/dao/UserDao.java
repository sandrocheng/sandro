package sandro.website.dao;

import org.springframework.stereotype.Repository;
import sandro.website.domain.User;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @Repository是属于Spring的注解。
 * 它用来标注访问层的类（Dao层），它表示一个仓库，主要用于封装对于数据库的访问。其实现方式与@Component注解相同，只是为了明确类的作用而设立。
 * 即@Repository是@Component注解的一个派生品，与@Service和@Controller都可以理解为@Component注解的扩展。
 * 他们的作用都是在类上实例化bean，并把当前类对象的实现类交给spring容器进行管理。
 * 换句话说，@Repository注解修饰哪个类表明这个类具有对数据库CRUD的功能，用在持久层的接口上。
 * 另外，作为spring的注解，他还能把所标注的类中抛出的数据访问异常封装为spring的数据访问异常类型。
 *
 * 使用@Autowired实例化
 */
@Repository //
public class UserDao {

    private static Map<Long, User> users = null;
    private static long id = 3L;
    static{
        users = new HashMap<Long, User> ();
        users.put(1L,new User(1L,"sandro","123456","123@sss.com",1,
                new Date(),"136000000","大连",User.STATUS_USING,"sandro简介"));
        users.put(2L,new User(2L,"lily","123456","3@sss.com",0,
                new Date(),"136100000","大连",User.STATUS_VERIFY,"lily简介"));
    }

    public void addUser(User u){
        long uid = id++;
        u.setId(uid);
        users.put(uid,u);
    }

    public void editUser(User u){
        users.put(u.getId(),u);
    }

    public void delUser(long id){
        users.remove(id);
    }

    public User getUserbyEmailAndPassword(String email,String password){
        if(email == null || password == null){
            return null;
        }
        for(Long key : users.keySet()){
            User u = users.get(key);
            if(u.getPassword().equals(password) && u.getEmail().equals(email)){
                return u;
            }
        }
        return null;
    }

    public List<User> getAllUsers(){
        return users.values().stream()
                .collect(Collectors.toList());
    }

    public User getUserbyId(long id){
        return users.get(id);
    }
}
