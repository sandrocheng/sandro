package com.sandro.classloader;

class Test13Parent{
    static int a = 3;
    static{
        System.out.println("Test13Parent static block");
    }
}

class Test13Child extends Test13Parent{
    static int b = 4;
    static{
        System.out.println("Test13Child static block");
    }
}

public class Test13 {
    static {
        System.out.println("Test13 static block");
    }
    public static void main(String[] args) {
        /**
         * 如果只是定义没有赋值，类不会初始化
         * Test13Parent p = null;  和 Test13Parent p ;都不会让Test13Parent初始化
         */
        Test13Parent p;
        /**
         * 此时只会执行Test13静态代码块的内容
         */
        System.out.println("---------------");
        p = new Test13Parent();//创建对象会导致类的初始化
        System.out.println("---------------");
        System.out.println(p.a);//此时由于Test13Parent类已经初始化结束了，所以Test13Parent的静态代码块不会再次执行
        System.out.println("---------------");
        /**
         * 静态常量的读取，也会导致类的初始化
         * 此时由于父类已经初始化结束了，所以父类的静态代码块不会再次执行
         */
        System.out.println(Test13Child.b);
    }
}
