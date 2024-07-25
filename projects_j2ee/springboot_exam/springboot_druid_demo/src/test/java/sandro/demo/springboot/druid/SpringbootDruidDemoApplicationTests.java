package sandro.demo.springboot.druid;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@SpringBootTest
class SpringbootDruidDemoApplicationTests {

	@Autowired
	DataSource dataSource;

	@Test
	void contextLoads() {
		System.out.println(dataSource.getClass());

		try {
			Connection conn = dataSource.getConnection();
			System.out.println(conn);
			conn.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
