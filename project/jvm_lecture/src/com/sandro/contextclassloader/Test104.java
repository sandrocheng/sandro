package com.sandro.contextclassloader;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Test104 {
    public static void main(String[] args) throws Exception {
        /**
         * 加载classpath中的 jdbc驱动类
         * Class.forName(String name),实际上是调用
         * Class<?> forName0(String name, boolean initialize,ClassLoader loader,Class<?> caller)这个方法
         * 参数为
         * forName0(className, true, ClassLoader.getClassLoader(caller), caller);
         * true：代表返回的类需要初始化，即顺序执行静态代码块，静态对象赋值
         *
         * com.mysql.cj.jdbc.Driver实现类中有一段静态代码块，通过java.sql.DriverMandger.registerDriver(new Driver) 方法注册了一个Driver实例
         * 而java.sql.DriverMandger.registerDriver中也有一个静态代码块，里面会执行loadInitialDrivers();方法
         * 这个方法中 会尝试根据 System.getProperty("jdbc.drivers")的配置加载jdbc 驱动,一般这个值是没有的。
         *
         *
         */
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("jdbc.drivers is " + System.getProperty("jdbc.drivers"));

        try {
            /**
             * 虽然只执行了 com.mysql.cj.jdbc.Driver 的一个类加载方法
             * 但是由于执行类初始化，后面一些列类中的静态代码块都执行了，其中就有向DriverManager注册Driver的逻辑
             * 因此DriverManager中可以直接发起连接请求
             * 由于DriverManager是启动类加载器加载的，为了能够加载classpath中的类，所以内部实现中，加载类的方式是使用调用者的类加载器去加载的
             *
             * 实际上不管有没有调用Class.forName("com.mysql.cj.jdbc.Driver");
             * DriverManager都会根据SPI规范找到所有的实现类
             * 在DriverManager中会判断当前的classloader加载一个驱动类 判断是否 和注册的Driver驱动类是否是一个
             * 这么做是为了避免启动时加载driver的加载器，不是当前调用的加载器，从而引起的命名空间不动导致driver对象实例不兼容的问题
             *
             */
            Connection cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytestdb");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
