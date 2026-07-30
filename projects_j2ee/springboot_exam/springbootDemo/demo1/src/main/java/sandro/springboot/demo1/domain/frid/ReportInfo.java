package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportInfo {
    private String creator = "admin";
    private String end_at;
    private String name="测试报告";
    private String path="http://localhost:8083/2026-04-02_1111.pdf";
    private String start_at;
    private int id;
    private static Random random = new Random();
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public ReportInfo(int id){
        Date curDate = new Date();
        long startTime = curDate.getTime() - random.nextInt(1000) * 1000;
        long endTime = curDate.getTime() + random.nextInt(1000) * 1000;
        Date startDate = new Date();
        startDate.setTime(startTime);
        Date endDate = new Date();
        endDate.setTime(endTime);
        this.end_at = sdf.format(endDate);
        this.start_at = sdf.format(startDate);
        this.id = id;
    }
}
