package com.sandro.classloader;

class Test15Parent{
    static{
        System.out.println("Test15Parent static block");
    }

}

public class Test15 {
    public static void main(String[] args) throws ClassNotFoundException {
        //获取系统类加载器，
        ClassLoader loader = ClassLoader.getSystemClassLoader();

        Class<?> clazz = loader.loadClass("com.sandro.classloader.Test15Parent");
        /**
         * 通过classloader加载的class对象不会初始化
         */
        System.out.println(clazz);

        System.out.println("-------------");
        clazz = Class.forName("com.sandro.classloader.Test15Parent");
        /**
         * 通过反射获取的class对象，类会初始化
         */
        System.out.println(clazz);
    }
}
