package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StaticsData {
    private int total = 100000;
    private VenderCount[] data = new VenderCount[]{
            new VenderCount("黑莓",1100),
            new VenderCount("苹果",2100),
            new VenderCount("三星",3100),
            new VenderCount("LG",4100),
            new VenderCount("HTC",5100),
            new VenderCount("索尼",6100),
            new VenderCount("谷歌",7100),
            new VenderCount("微软",8100),
            new VenderCount("夏普",9100),
            new VenderCount("国产",11000),
            new VenderCount("其他",11100),
    };
}
