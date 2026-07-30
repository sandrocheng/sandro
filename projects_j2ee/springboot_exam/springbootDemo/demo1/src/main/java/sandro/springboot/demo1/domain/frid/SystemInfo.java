package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SystemInfo {
    private String capacity = "12000mAh";
    private String charging_time = "15V6A 2.5小時充满";
    private String client = "";
    private String cpu = "瑞芯微RK3588 8核";
    private String duration = "≥6小時";
    private String expired_at = "2026-04-16T14:02:00.128048364+08:00";
    private String hardware_id = "e3293b3959d77b28e9376f763684872edf5ca0d6";
    private String issued_at = "2026-03-17T14:02:00.128048364+08:00";
    private String ram = "4G";
    private String resolution = "1920*1280";
    private String rom = "64G";
    private String size = "10.5寸";
    private String software_id = "e3293b3959d77b28e9376f763684872edf5ca0d6";
    private String type = "正式";
    private String version = "1.0.4";
}
