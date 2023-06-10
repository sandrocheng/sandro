package com.sandro.classloader;

import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;

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
    }
}
