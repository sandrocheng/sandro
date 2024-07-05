package sandro.springboot.demo1;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import sandro.springboot.demo1.domain.Manager;
import sandro.springboot.demo1.domain.Person;
import sandro.springboot.demo1.domain.User;
import sandro.springboot.demo1.domain.UserInfo;

@SpringBootTest
class Demo1ApplicationTests {


	@Autowired //表示由spring生成对象，并注入数据
	private UserInfo userInfo;

	@Autowired //表示由spring生成对象，并注入数据
	private User user;
	@Autowired
	private Manager manager;

	@Autowired
	private Person person;
	@Test
	void contextLoads() {
		System.out.println(userInfo);
	}

	@Test
	void testUser(){
		System.out.println(user);
	}

	@Test
	void testManager(){
		System.out.println(manager);
	}

	@Test
	void testPerson(){
		System.out.println(person);
	}

}
