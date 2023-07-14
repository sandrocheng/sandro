package com.sandro.classloader;

import com.mysql.cj.BindValue;

import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;

/**
 * 上下文类加载器，通过类加载器读取资源在磁盘上的路径
 */
public class Test17 {
    public static void main(String[] args) throws IOException {
        /**
         * 从当前主线程中根据上下文获取类加载器
         * 上下文加载器：由当前线程的创建者提供的，通常情况下就是启动应用的应用类加载器
         */
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        System.out.println(classLoader);

        /**
         * 根据类名，得到文件资源在磁盘上的路径
         * 可以是类名，也可以是图片，声音等文件
         * 类名中的"."要换成"/"
         */
        String  resourceName = "com/sandro/classloader/Test4.class";
        Enumeration<URL> urls = classLoader.getResources(resourceName);
        while (urls.hasMoreElements()){
            URL url = urls.nextElement();
            System.out.println(url);
        }

        System.out.println("----------jar hell----------");

        /**
         * jar hell问题以及解决方法
         * 当一个类或者一个资源文件存在多个jar中，就会出现jar hell问题
         * 通过查询路径的方法可以获取类文件在哪个路径下面
         * 假设一个类即存在与多个依赖包，那么这个类加载的时候就会出问题，可以通过查看资源路径的方法检测这个类到底存在于哪些路径下面
         * BindValue这个类分别存在与 jdbcbv.jar和mysql-connector-java-8.0.29.jar中
         * 在使用这个类的时候就会出现各种问题，可能编译不通过，也可能编译通过了，但是运行期间会出现各种问题
         */
//        BindValue bv = new BindValue() {
//            @Override
//            public void reset() {
//
//            }
//        };
        resourceName = "com/mysql/cj/BindValue.class";
        urls = classLoader.getResources(resourceName);
        while (urls.hasMoreElements()){
            URL url = urls.nextElement();
            System.out.println(url);
        }
    }
}


