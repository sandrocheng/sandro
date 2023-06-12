package com.sandro.classloader;

/**
 * 命名空间案例
 * 命名空间中的类加载关系：
 *        子加载器加载的类，可以访问父加载器加载过的类
 *        而父加载器加载的类，不能访问子加载器加载的类
 */
public class Test22 {
    public static void main(String[] args) throws ClassNotFoundException {
        Test19.MyClassLoader loader1 = new Test19.MyClassLoader("loader1");
        Class<?> clazz = loader1.loadClass("com.sandro.classloader.classes.SampleClass");
        System.out.println("clazz.hashCode" + clazz.hashCode());

        /**
         * MyClassLoader findClass : com.sandro.classloader.classes.SampleClass
         * clazz.hashCode21685669
         * SampleClass is loaded by : loader1
         * MyDog is loaded by : sun.misc.Launcher$AppClassLoader@18b4aac2
         * SampleClass放在res目录下，被自定义加载器加载，
         * SampleClass中的MyDog由于在项目classpath下所以此时被自定义加载器加载的父加载器也就是应用类加载器加载
         *
         * 如果反过来，SampleClass在项目中 MyDog放在res目录下，
         * 由于第一次使用的是系统类加载器加载的SampleClass，当执行SampleClass构造函数中的MyDog的时候，
         * 此时MyDog会使用SampleClass的类加载器也就是应用类加载器，这个时候是无法加载的，因此会报错
         */
        try {
            clazz.newInstance();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }

        System.out.println("----------------------");
        /**
         * 1 自定义加载器加载了Sample2,
         * 2 加载MySnake，由于MySnake在项目的classpath中，所以使用了当前类加载器加载了MySnake
         * 3 执行MySnake中的加载器加载sample2,此时的加载器是系统加载器，由于项目的classpath中并没有Sample2,所以报错了
         *
         * 整个过程中，Sample2 被加载了两次，分辨在自定义加载器和系统加载器中都加载了，之所以同一个类会加载两次
         * 是因为两个加载器的命名空间是独立的，在不同的命名空间中有可能加载同一个类
         */
        clazz = loader1.loadClass("com.sandro.classloader.classes.Sample2");
        try {
            clazz.newInstance();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }
}
