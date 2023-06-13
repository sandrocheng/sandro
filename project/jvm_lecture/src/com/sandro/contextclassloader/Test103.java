package com.sandro.contextclassloader;

import java.sql.Driver;
import java.util.ServiceLoader;
import java.util.Iterator;

/**
 * 上下文加载器 加载 mysql jdbc实现类的例子
 * 通过 -XX:+TraceClassLoading 中看到
 * [Loaded java.util.ServiceLoader from /usr/jdk1.8.0_291/jre/lib/rt.jar] ServiceLoader的加载路径是启动类加载路径
 * [Loaded com.mysql.cj.jdbc.Driver from file:/home/sandro/mywork/gitwork/sandro/project/jvm_lecture/libs/mysql-connector-java-8.0.29.jar]
 * mysql的jdbc实现已经从 应用加载器的 classpath 中加载了
 */
public class Test103 {
    public static void main(String[] args) {
        loadJDBCDriver();
        System.out.println("----------------");

        /**
         * 修改了当前上下文加载器为 扩展类加载器
         * 此时ServiceLoader就无法加载到classpath中的 JDBC实现类了
         */
        Thread.currentThread().setContextClassLoader(Test103.class.getClassLoader().getParent());
        loadJDBCDriver();
    }

    /**
     * 加载JDBC驱动
     */
    private static void loadJDBCDriver() {
        /*
         * java 服务加载器，用来加载当前各种服务实现
         * Service是内置的接口和类（通常是抽象类）的集合
         * service-provider : 服务提供者是具体服务的实现
         * 服务提供者可以以扩展的的方式（jar包）放在应用的classpath或者其他的特定平台的具体方式，并加载
         * 服务提供者是查找 资源目录中 META-INF/servies/目录下的  二进制名字文件
         * 比如：mysql包中的 META-INF 中 services里的 java.sql.Driver ,这个文件中指定了类名：com.mysql.cj.jdbc.Driver
         *     重复的配置文件名子会被忽略掉，比如多个jar包里都有 java.sql.Driver这个文件，加载后其他的类就不会被加载了
         *
         * 在源码中，load方法使用了上下文类加载器加载根据参是中的服务接口 去加载classpath中的 服务接口实现类
         * 实现类的基本信息在classpath中所有jar包中的META-INF/servies/ 目录中
         * 之所以要使用上下文类加载器，是因为ServiceLoader是启动类加载器加载的。而启动类加载器无法加载classpath中的类
         */
        ServiceLoader<Driver> loader = ServiceLoader.load(Driver.class);
        Iterator<Driver> iterator = loader.iterator();
        while(iterator.hasNext()){
            /**
             * 当把mysqljdbc的包引入到项目的classpath以后，系统在启动过程中就自动加载了mysql的driver实现类
             * driverclass com.mysql.cj.jdbc.Driver ,loader sun.misc.Launcher$AppClassLoader@18b4aac2
             * 也就是说在启动加载器里面去加载了应用加载器的类，原因是SPI的实现中使用的是上下文类加载器
             */
            Driver driver = iterator.next();
            System.out.println("driver" + driver.getClass() + " ,loader " + driver.getClass().getClassLoader());
        }
        System.out.println("cur context class loader is " + Thread.currentThread().getContextClassLoader());

        //ServiceLoader的类加载器是null，它是启动类加载器加载的。
        System.out.println("ServiceLoader的类加载器：" + ServiceLoader.class.getClassLoader());
    }
}
