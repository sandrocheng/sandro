package demo.springboot.async.service;

import demo.springboot.async.AsyncDemoApplication;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

/**
 * Service注解是 Spring Framework 中的一种注解，它标识了这个类是一个业务逻辑层的服务 Bean。
 * 这意味着当 Spring 应用启动时，该 Bean 会被自动创建并加入到 Spring 应用上下文中。
 * 简而言之，@Service 注解是一种用于标记服务层 Bean 的注解，是在 Spring Boot 应用中实现业务逻辑复用的重要方法之一。
 *
 */
@Service
public class AsyncService {

    /**
     *@Async注解是Spring框架提供的一个功能，用于实现方法的异步执行。
     *通过在方法上添加@Async注解，可以指示Spring框架在另一个线程中异步执行该方法，从而避免阻塞主线程，提高系统的响应速度和吞吐量。
     */
    @Async
    public void doSomething(){
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        System.out.println(AsyncDemoApplication.getCurTimeStr() + " : doSomething finish");
    }
}
