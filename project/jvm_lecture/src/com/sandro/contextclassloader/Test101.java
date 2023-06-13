package com.sandro.contextclassloader;

/**
 * 上下文类加载器
 */
public class Test101 {
    public static void main(String[] args) {
        /**
         * 读取当前线程中的上下文类加载器
         * sun.misc.Launcher$AppClassLoader@18b4aac2
         */
        System.out.println(Thread.currentThread().getContextClassLoader());

        /**
         * 读取线程类的classloader : null
         * 因为Thread类 是 java.lang包的类，它是由启动类加载器加载，所以classloader是null
         */
        System.out.println(Thread.class.getClassLoader());
    }
}
