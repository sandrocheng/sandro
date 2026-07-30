package sandro.springboot.demo1.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import sandro.springboot.demo1.domain.frid.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

//给蓝牙扫描前端提供测试接口
@RestController
@CrossOrigin(origins = "*")
public class FridScanner {
    private static final String TOKEN = "123fwdfsf93423234";

    @GetMapping("/test")
    @ResponseBody//把返回的字符串做为结果返回给请求方
    public String test(){
        return "hello 2";
    }

    @PostMapping("/login")
    public LoginResult login(@RequestBody RequestLoginBody mRequestLoginBody) {
        System.out.println("login : " + mRequestLoginBody.toString());
        LoginResult result = new LoginResult();
        if (mRequestLoginBody.checkData()) {
            result.setMessage("error password or username");
        }else{
            result.setMessage("Login successful");
            result.setToken(TOKEN);
            result.setUser(new User("1","test","admin"));
        }
        return result;
    }

    @PostMapping("/act/start")
    public ResponseEntity<StartResult> start(HttpServletRequest request, @RequestBody StartMissionInfo mStartMissionInfo){
        StartResult r = new StartResult();
        r.setMessage("Scan started successfully");
        System.out.println("start: " + mStartMissionInfo.toString());
        String token = request.getHeader("Authorization");
        if(!TOKEN.equals(token) ){
            r.setMessage("error token");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(r);
        }
        return ResponseEntity.ok(r);
    }

    private static List<DeviceInfo> devices = new ArrayList<>();
    private static DeviceInfo CUST_MAC_INFO = new DeviceInfo();

    @GetMapping({"/act/fetch/{mac}", "/act/fetch"})
    public ResponseEntity<ScanData> fetch(HttpServletRequest request,@PathVariable Optional<String> mac){

        String token = request.getHeader("Authorization");
        ScanData sd = new ScanData();
        if(mac.isPresent()){
            List<DeviceInfo> list = new ArrayList<>();
            CUST_MAC_INFO.setMac(mac.get());
            CUST_MAC_INFO.setKey(mac.get());
            CUST_MAC_INFO.refresh();
            CUST_MAC_INFO.setVendor("苹果");
            System.out.println("fetch " + CUST_MAC_INFO.toString());
            list.add(CUST_MAC_INFO);
            sd.setLen(list.size());
            sd.setData(list.toArray(new DeviceInfo[0]));
            return ResponseEntity.ok(sd);
        }
        if(!TOKEN.equals(token) ){
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(sd);
        }
        if(devices.size() < 300){
            DeviceInfo info = new DeviceInfo();
            info.setId(devices.size() + 1);
            devices.add(info);
            for(DeviceInfo dInfo :devices){
                dInfo.refresh();
            }
        }else{
            devices.clear();
        }
        sd.setLen(devices.size());
        sd.setData(devices.toArray(new DeviceInfo[0]));
        return ResponseEntity.ok(sd);
    }

    @GetMapping("/battery")
    public ResponseEntity<BatteryStatus> getBatteryStatus(){
        BatteryStatus bs = new BatteryStatus(80,2);
        return ResponseEntity.ok(bs);
    }

    @PostMapping("/act/stop")
    public ResponseEntity<StopResult> stop(HttpServletRequest request, @RequestBody String id){
        System.out.println("stopScan: " + id);
        StopResult sr = new StopResult();
        sr.setReport_id(id);
        return ResponseEntity.ok(sr);
    }

    @GetMapping("/reboot")
    @ResponseBody//
    public String reboot(){
        System.out.println("reboot");
        return "ok";
    }


    @GetMapping("/poweroff")
    @ResponseBody//
    public String powerOff(){
        System.out.println("poweroff");
        return "ok";
    }

    @GetMapping("/act/statistics")
    @ResponseBody
    public ResponseEntity<Object>  getStatistics(){
        return ResponseEntity.ok(new StaticsData());
    }

    @GetMapping("vibration")
    @ResponseBody
    public ResponseEntity<Object>  vibration(){
        System.out.println("vibration");
        return ResponseEntity.ok(new CommonResp("successfully"));
    }

    @PostMapping("/time_setting")
    @ResponseBody
    public ResponseEntity<Object>  setTime(@RequestBody String time){
        System.out.println("setTime : " + time);
        return ResponseEntity.ok(new CommonResp("successfully"));
    }

    private static ReportsData rd = new ReportsData(1000);
    @GetMapping( {"/reports/{name}", "/reports"})
    public ResponseEntity<Object> getReports(@PathVariable Optional<String> name) {
        System.out.println("getReports : ");
        System.out.println(name.toString());
        if(name.isPresent()){
            Path file = Paths.get("D:\\my_work\\giteeRepo\\rfid_scanner\\doc\\2026-04-02_1111.pdf");
            byte[] fileContent = null;
            try {
                fileContent = Files.readAllBytes(file);
            } catch (IOException e) {
                return ResponseEntity.ok()
                        .header("Content-Type", "application/pdf")
                        .body(new byte[]{});
            }
            return ResponseEntity.ok()
                    .header("Content-Type", "application/pdf")
                    .body(fileContent);
        }
        return ResponseEntity.ok(rd);
    }

    @PostMapping("/reports")
    public ResponseEntity<Object> reportAction( @RequestBody PostReportData data){
        System.out.println("reportAction: " + data.getAction());
        String idStr = "";
        for(String id :data.getIds()){
            idStr += id + ",";
        }
        System.out.println(idStr);
        if("copy".equals(data.getAction())){
            return ResponseEntity.ok(new CommonResp("没有找到u盘"));
        }
        List<ReportInfo> list = new ArrayList<>(Arrays.asList(rd.getData()));
        Iterator<ReportInfo> iterator = list.iterator();
        while (iterator.hasNext()) {
            ReportInfo element = iterator.next();
            for(String id :data.getIds()){
                if(element.getId() == Integer.parseInt(id)){
                    iterator.remove();
                    break;
                }
            }
        }
        rd.setData(list.toArray(new ReportInfo[0]));
        return ResponseEntity.ok(new CommonResp("successfully"));
    }

    @PostMapping("/alarm_setting")
    public ResponseEntity<Object> reportAlarmSettings(@RequestBody postAlarmSettings data){
        System.out.println(data.toString());
        return ResponseEntity.ok(new CommonResp("successfully"));
    }


    @PostMapping("/users/edit")
    public ResponseEntity<Object> editUser(@RequestBody UserEditData data){
        System.out.println("editUser");
        return ResponseEntity.ok(new CommonResp("successfully"));
    }

    @GetMapping( "/system_info")
    public ResponseEntity<Object> getSystemInfo(){
        SystemInfo info = new SystemInfo();
        return ResponseEntity.ok(info);
    }


    @GetMapping( "/reset")
    public ResponseEntity<Object> reset(){
        System.out.println("reset");
        return ResponseEntity.ok("successfull");
    }

    @GetMapping( "/upgrade")
    public ResponseEntity<Object> upgrade(){
        System.out.println("upgrade");
        return ResponseEntity.ok(new CommonResp("请插入u盘"));
    }
}
