package com.sandro.classloader;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * 不同命名空间加载相同类导致的问题
 */
public class Test24 {
    public static void main(String[] args) throws Exception {
        //Person是系统加载器可加载的类，因此这个方法都正常
        invokePersion("com.sandro.classloader.Person");

        /**
         * Person2是 自定义加载器加载的类，此时反射方法 method.invoke(p1,p2); 报错
         * Exception in thread "main" java.lang.reflect.InvocationTargetException
         * ...
         * Caused by: java.lang.ClassCastException: com.sandro.classloader.classes.Person2 cannot be cast to com.sandro.classloader.classes.Person2
         * 原因：
         * 此时两个loader分别加载Person2类，这两个类的 命名空间是不一样的
         * 所以会输出 clazz1 == clazz2 is false
         * 所以p1的setMyPerson方法参数 无法识别 p2这个对象，p1的setMyPerson方法参数只能识别class1生成的对象
         * 也就是说 两个对象是否是同一个类，不止类名要一样，还需要保证加载类的命名空间一样才可以
         */
        invokePersion("com.sandro.classloader.classes.Person2");
    }

    private static void invokePersion(String className) throws Exception {
        Test19.MyClassLoader loader1 = new Test19.MyClassLoader("loader1");
        Test19.MyClassLoader loader2 = new Test19.MyClassLoader("loader2");

        Class<?> clazz1 = loader1.loadClass(className);
        Class<?> clazz2 = loader2.loadClass(className);

        //虽然是两个加载器实例加载，由于Person类是当前项目中的类，所以都是由应用加载器加载的
        System.out.println("clazz1 == clazz2 is " + (clazz1 == clazz2));

        Object p1 = clazz1.newInstance();
        Object p2 = clazz2.newInstance();

        Method method = clazz1.getMethod("setMyPerson",Object.class);
        method.invoke(p1,p2);
    }
}
class Person{
    private Person p;
    public void setMyPerson(Object p){
        this.p = (Person)p;
    }
}

