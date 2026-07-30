package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Random;

@Data
@AllArgsConstructor
public class DeviceInfo {
//    “id”: 0,“mac”: “68:2A:::CC:D3”,“model”: “”,“rssi”: “-71”,“updated”: “2026-03-12 17:21:50”,“vendor”: “苹果”

    private static String[] VENDORS = new String[]{"黑莓","苹果","三星","LG","谷歌","索尼","HTC","夏普","微软",
            "东芝1111111111111111111111222222222233333",
            "丰田111111111111111111111122222222223333",
            "OPPO111111111111111111111122222222223333",
            "华为111111111111111111111122222222223333",
            "VIVO","小米","大唐","阿里"};
    private static Random random = new Random();
    private long id;
    private String mac="";
    private String key="";
    private String updated;
    private String rssi;
    private String model;
    private String vendor;
    private String name;
    private String device_type;
    private static String chars = "1234567890abcdef";
    public DeviceInfo(){
        setRandomMac();
        updated = new Date().getTime() / 1000 + "";
        rssi = "-" + random.nextInt(1,180);
        vendor = VENDORS[random.nextInt(0,VENDORS.length)];
        model = "Find MyFind ";
        this.name = "设备名称xxx" + random.nextInt(1,180);
        device_type="设备类型xxx";
    }

    public void refresh(){
        rssi = "-" + random.nextInt(0,120);
    }

    private void setRandomMac(){
        for(int i = 0;i< 6;i++){
            int x = random.nextInt(0,256);
            String hex = Integer.toHexString(x).toUpperCase();
            if(i<5){
                mac += hex + "-";
            }else{
                mac += hex;
            }
        }
        this.key = this.mac;
    }
}
