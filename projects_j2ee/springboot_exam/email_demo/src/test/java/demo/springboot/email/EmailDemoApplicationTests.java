package demo.springboot.email;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;

@SpringBootTest
class EmailDemoApplicationTests {

	@Autowired
	JavaMailSenderImpl mailSender;

	/**
	 * 发送简单邮件
	 */
	@Test
	void contextLoads() {
		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setSubject("subject test");
		msg.setText("test Text");
		msg.setTo("382667954@qq.com");
		msg.setFrom("foxone1980118@sina.com");
		mailSender.send(msg);
	}

	/**
	 * 发送复杂邮件
	 */
	@Test
	void contextLoads2() throws MessagingException {
		MimeMessage msg = mailSender.createMimeMessage();

		//多附件也是用这个helper
		MimeMessageHelper helper = new MimeMessageHelper(msg);

		helper.setSubject("MimeMessage");
		helper.setText("<p style='color:red'> html message</p>",true);

		helper.setTo("382667954@qq.com");
		helper.setFrom("foxone1980118@sina.com");

		mailSender.send(msg);
	}

}
