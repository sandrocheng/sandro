package com.sandro.classloader;

/**
 * 读取系统类加载器，并循环读取其所有的父加载器
 */
public class Test16 {
    public static void main(String[] args) {
        ClassLoader classLoader = ClassLoader.getSystemClassLoader();
        while(classLoader!=null){
            /**
             * 循环读取应用加载器的所有父加载器
             * sun.misc.Launcher$AppClassLoader@18b4aac2
             * sun.misc.Launcher$ExtClassLoader@74a14482
             * null代表的就是启动类加载器
             */
            System.out.println(classLoader);
            classLoader = classLoader.getParent();
        }
    }
}
