package demo.springboot.async;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

import java.text.SimpleDateFormat;
import java.util.Date;

@SpringBootApplication
@EnableAsync //使用EnableAsync开启异步任务线程
public class AsyncDemoApplication {

	private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public static void main(String[] args) {
		SpringApplication.run(AsyncDemoApplication.class, args);
	}

	public static String getCurTimeStr(){
		return dateFormat.format(new Date());
	}

}
