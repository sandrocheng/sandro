package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LoginResult {
    private String message;
    private String token;
    private User user;
    private String settings = "{\"display_scan_val\":\"-90\",\"alarm_warning\":\"1\",\"bt_warn_greater\":\"-70\",\"bt_warn_less\":\"1\",\"location_warning\":\"1\",\"mobile_vendor\":\"黑莓,1;苹果,1;三星,1;LG,1;谷歌,1;索尼,1;HTC,1;夏普,1;微软,0;其它,0;\"}";
}
