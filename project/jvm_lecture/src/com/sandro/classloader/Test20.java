package com.sandro.classloader;

/**
 * 类卸载的例子
 * 通过 -XX:+TraceClassUnLoading 观察类卸载
 * Run->profile-> Test20-> 选择modify options 增加 VM options，然后在新增的编辑框里填写jvm命令
 *
 * 或者让进程sleep 然后通过jvisualvm，查看类的创建和释放
 * 进程->监视面板中 ，查看类信息，可以看到有一个类被卸载
 */
public class Test20 {
    public static void main(String[] args) throws ClassNotFoundException, InterruptedException {
        Test19.MyClassLoader loader1 = new Test19.MyClassLoader("loader1");
        Class<?> clazz1 = loader1.loadClass("com.sandro.annotation.Main");
        System.out.println("class1: " + clazz1.toString() + ",class1 hashcode : " + clazz1.hashCode());


        /**
         * 执行gc以后，[Unloading class com.sandro.annotation.Main 0x00000007c0061028]
         * 发现class对象已经被卸载
         */
        loader1 = null;
        clazz1 = null;
        System.gc();


        loader1 = new Test19.MyClassLoader("loader2");
        Class<?> clazz2 = loader1.loadClass("com.sandro.annotation.Main");
        System.out.println("class2: " + clazz2.toString() + ",class2 hashcode : " + clazz2.hashCode());

        Thread.sleep(2000000);
    }
}
