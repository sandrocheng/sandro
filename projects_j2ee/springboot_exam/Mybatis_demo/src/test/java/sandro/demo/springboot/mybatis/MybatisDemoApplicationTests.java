package sandro.demo.springboot.mybatis;

import com.fasterxml.jackson.databind.JsonSerializable;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.SQLException;

@SpringBootTest
class MybatisDemoApplicationTests {

	@Autowired
	private DataSource dataSource;
	@Test
	void contextLoads() throws SQLException {
		System.out.println(dataSource.getClass());
		System.out.println(dataSource.getConnection());
	}

}
