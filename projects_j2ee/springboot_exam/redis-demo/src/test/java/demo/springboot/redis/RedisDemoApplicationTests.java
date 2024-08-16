package demo.springboot.redis;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import demo.springboot.redis.domain.Manager;
import demo.springboot.redis.domain.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.concurrent.TimeUnit;

@SpringBootTest
class RedisDemoApplicationTests {

	@Autowired
	RedisTemplate<String,Object> redisTemplate;

	/**
	 * 没有自定义RedisConfig的时候使用默认的方法保存和获取数据
	 */
	@Test
	void contextLoads() {
		//简单的数据测试，redisTemplate中 value的数据要序列化处理，以避免数据问题，如果只是简单的String类型，或者原始类型也可以不序列化
		//但是中文有可能出现编码问题
		redisTemplate.opsForValue().set("sandro","程亮");
		String value = (String)redisTemplate.opsForValue().get("sandro");
		System.out.println("---------- " + value);
		redisTemplate.delete("sandro");
	}

	/**
	 * 没有自定义RedisConfig的时候使用默认的方法保存和获取数据，
	 * 需要每次都手动转化为json,或者对象类需要实现Serializable
	 */
	@Test
	void contextLoads2() throws JsonProcessingException {
		User u = new User("程亮",44);
		//User类是没有实现序列化接口的类，通常来讲要传递这种类的对象可以使用json的格式序列化
		//ObjectMapper是jackson提供的json工具类，这里把对象转成了一个json字符串，然后再保存到redis中
		String userStr = new ObjectMapper().writeValueAsString(u);
		redisTemplate.opsForValue().set("sandro",userStr);

		String str = (String)redisTemplate.opsForValue().get("sandro");
		System.out.println(str);

		//Manager实现了Serializable接口，因此可以直接使用redis的保存和读取接口
		Manager m = new Manager("程亮",44,true);
		redisTemplate.opsForValue().set("sandro",m);

		Manager manager = (Manager)redisTemplate.opsForValue().get("sandro");
		System.out.println(manager.toString());
		redisTemplate.delete("sandro");
	}

	/**
	 * 自定义RedisConfig以后，在RedisConfig中实现数据的序列化类RedisTemplate，外部调用的时候会比较方便
	 */
	@Test
	void contextLoads3() throws InterruptedException {
		User u = new User("程亮123",44);
		//设置有保存时间的缓存数据，缓存6秒
		redisTemplate.opsForValue().set("sandro123",u,6, TimeUnit.SECONDS);

		u = (User)redisTemplate.opsForValue().get("sandro123");
		System.out.println("user: " + u.toString());

		Thread.sleep(3);
		System.out.println("user expire : " + redisTemplate.getExpire("sandro123",TimeUnit.SECONDS));

		Thread.sleep(4);
		System.out.println("has key : " + redisTemplate.hasKey("sandro123"));

		redisTemplate.delete("sandro123");
	}

}
