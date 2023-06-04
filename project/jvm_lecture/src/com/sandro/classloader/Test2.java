package com.sandro.classloader;

/**
 * 父类 子类 静态变量初始化顺序例子2
 */
public class Test2 {
    public static void main(String[] args) {
        /**
         * 输出：
         *      Parent static block start
         *      Child static block start
         *      welcome
         *
         *  对于静态字段来说，只有直接定义了这个字段的类才会初始化
         *  因为STR子类覆盖了，因此子类会在父类初始化后继续初始化
         *  子类初始化的时候会执行子类的static代码块
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
        public static String STR = "welcome";
        static {
            System.out.println("Child static block start");
        }
    }
}


