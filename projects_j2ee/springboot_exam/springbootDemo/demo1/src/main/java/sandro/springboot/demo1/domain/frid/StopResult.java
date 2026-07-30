package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StopResult {
    private String full_path = "reports/蓝牙扫描报告 第四个任务.pdf";
    private String generated_at = "2026-03-11T17:28:35.604499573+08:00";
    private String report_id ;
    private String stop_scan = "2026-03-11T17:28:35.604497239+08:00";
}
