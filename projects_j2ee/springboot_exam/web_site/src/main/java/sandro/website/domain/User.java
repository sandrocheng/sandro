package sandro.website.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * 使用lambok简化代码，在Structure中可以看到使用相应的注解后，对应的方法和构造函数都已经生成了
 */
@Data //lambok注解，结合了 @Getter 、 @Setter 、 @ToString 、 @EqualsAndHashCode 等，生成全套常见方法。
@AllArgsConstructor //lambok注解，生成全参构造函数。
@NoArgsConstructor //lambok注解，生成无参构造函数。
public class User {
    public static final int STATUS_USING = 0;
    public static final int STATUS_STOP = -1;
    //审核中
    public static final int STATUS_VERIFY = 1;

    private long id;
    private String userName;

    private String password;

    private String email;

    private int gender; //0:女，1：男

    private Date birth;

    private String telNo;

    private String address;

    //状态，对应STATUS_**
    private int status;

    private String desc;
}
