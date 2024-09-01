package sandro.springboot.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.File;

@SpringBootApplication
public class WebDemoApplication {
	public static String uploadDir;

	public static void main(String[] args) {
		SpringApplication.run(WebDemoApplication.class, args);

		createFilesDirs();
	}

	private static void createFilesDirs(){
		String rootPath = System.getProperty("user.dir") + File.separator;
		uploadDir = createdir(rootPath + "uploads");
	}

	private static String createdir(String dirname){
		File dir = new File(dirname);
		if(!dir.exists()){
			return dir.mkdir()?dirname:null;
		}else{
			return dirname;
		}
	}

}
