package com.sandro.classloader;

/**
 * 父类 子类 静态变量初始化顺序例子1
 * -XX:+TraceClassLoading 用于追踪类的加载信息并打印出来
 * 比如：
 *      在class根目录中运行
 *      jvm_lecture/out/production/jvm_lecture$ java -XX:+TraceClassLoading com.sandro.classloader.Test1
 *
 */
public class Test1 {
    public static void main(String[] args) {
        /**
         * 输出：
         *      Parent static block start
         *      hello world
         *  对于静态字段来说，只有直接定义了这个字段的类才会初始化
         *  因为STR是父类定义，即使是通过子类调用，依然是直接使用父类的类信息，
         *  这种情况不是首次主动使用Child类，而是首次主动使用Parent类，
         *  因此Child类的静态代码块不会执行
         *  通过使用-XX:+TraceClassLoading 查看加载过程，发现子类虽然没有初始化但是已经加载了
         */
        System.out.println(Child.STR);
    }

    static class Parent{
        public static String STR = "hello world";

        static{
            System.out.println("Parent static block start");
        }
    }

    static class Child extends Parent{
        static {
            System.out.println("Child static block start");
        }
    }
}


