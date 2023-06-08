package com.sandro.classloader;

/**
 * 使用类加载器加载class
 */
public class Test11 {
    public static void main(String[] args) throws ClassNotFoundException {
        Class<?> clazz = Class.forName("java.lang.String");
        //返回真正加载这个类的类加载器，null表示当前类加载是Bootstrap 根类加载器
        //String是 lang包下的类，也就是rt.jar包中的类，这些类都是由根类加载器负责加载，所以返回null
        System.out.println(clazz.getClassLoader());

        Class<?> clazz2 = Class.forName("com.sandro.classloader.Test1");
        //sun.misc.Launcher$AppClassLoader@18b4aac2
        //AppClassLoader就是系统类也叫应用类加载器，因为当前类在工程(项目)中
        System.out.println(clazz2.getClassLoader());
    }

}
