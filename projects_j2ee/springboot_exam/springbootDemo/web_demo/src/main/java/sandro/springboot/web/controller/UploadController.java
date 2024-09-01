package sandro.springboot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import sandro.springboot.web.WebDemoApplication;
import sandro.springboot.web.domain.jsonObj.UploadFileResult;

import java.io.File;
import java.io.IOException;

@Controller
public class UploadController {

    @GetMapping("/page_upload.html")
    public String pageUpload(Model model){
        return "page_upload";
    }

    @PostMapping("/doAjaxUpload")
    @ResponseBody
    public String doAjaxUpload(@RequestParam("file") MultipartFile file,@RequestParam("id") String metaID){
        UploadFileResult r = new UploadFileResult();
        r.setMetaID(metaID);
        if(WebDemoApplication.uploadDir!=null && !file.isEmpty()){
            try {
                // 获取文件名
                String fileName = file.getOriginalFilename();

                // 保存文件
                File destFile = new File(WebDemoApplication.uploadDir + File.separator + fileName);
                file.transferTo(destFile);
                r.setFileName(fileName);
                r.setResult("success");
            } catch (IOException e) {
                r.setResult("error");
            }
        }

        return r.createJsonStr();
    }

    @PostMapping("/doUpload")
    public String uploadFile(@RequestParam("file") MultipartFile file){
        if(WebDemoApplication.uploadDir!=null && !file.isEmpty()){
            try {
                // 获取文件名
                String fileName = file.getOriginalFilename();

                // 保存文件
                File destFile = new File(WebDemoApplication.uploadDir + File.separator + fileName);
                file.transferTo(destFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


        return "redirect:page_upload.html";
    }

    @PostMapping("/doUploadfiles")
    public String uploadFiles(@RequestParam("files") MultipartFile[] files){
        if(WebDemoApplication.uploadDir!=null ){
            for(MultipartFile file :files){
                if(file.isEmpty()) continue;

                try {
                    // 获取文件名
                    String fileName = file.getOriginalFilename();

                    // 保存文件
                    File destFile = new File(WebDemoApplication.uploadDir + File.separator + fileName);
                    file.transferTo(destFile);

                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return "redirect:page_upload.html";
    }
}
