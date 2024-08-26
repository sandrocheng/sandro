package sandro.springsecurity.customlogin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class SpringsecurityDemoApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext run = SpringApplication.run(SpringsecurityDemoApplication.class, args);
		System.out.println("SpringsecurityDemoApplication run id：" + run.getId());
	}


}
