package com.sandro.classloader;

public class Test21 {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        Test19.MyClassLoader loader1 = new Test19.MyClassLoader("loader1");
        Class<?> clazz1 = loader1.loadClass("com.sandro.classloader.classes.MySample");
        System.out.println("clazz1.hashCode : " + clazz1.hashCode());

        /**
         * 实例化以后，才会执行Sample的构造函数，然后实例化MyCat的类，
         * 但是是否这个时候才开始加载MyCat类是不一定的，有可能在加载MySample类的时候，就预先加载了MyCat
         * 加载期间如果找不到MyCat类，不会报错，会在MyCat首次主动使用的时候才会报错
         */
        Object sampleObj = clazz1.newInstance();


    }
}
