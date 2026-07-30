package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RequestLoginBody {
    private String username;
    private String password;

    public boolean checkData() {
        return username == null || username.isEmpty()
                || password == null || password.isEmpty();
    }
}
