package sandro.springboot.jdbc_demo;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@SpringBootTest
class SpringJdbcDemoApplicationTests {

	@Autowired
	DataSource dataSource;
	@Test
	void contextLoads() {
		//查看默认数据源
		System.out.println(dataSource.getClass());

		//获取数据库链接
		try {
			Connection conn = dataSource.getConnection();
			System.out.println(conn);

			//xxxTemplate:springboot已经配置好的Bean,即拿即用封装好了CURD操作
			//比如org.springframework.boot.autoconfigure.jdbc.JdbcTemplateConfiguration
			//jdbc,redis等都是类似的
			//
			conn.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
