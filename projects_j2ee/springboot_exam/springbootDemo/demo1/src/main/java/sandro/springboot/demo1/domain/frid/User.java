package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private String id;
    private String username;
    //角色是admin viewer operator三者之一
    private String role;
}
