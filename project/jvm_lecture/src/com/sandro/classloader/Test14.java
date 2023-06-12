package com.sandro.classloader;

class Test14Parent{
    static int a = 3;
    static{
        System.out.println("Test14Parent static block");
    }

    static void run(){
        System.out.println("Test14Parent.run()");
    }
}

class Test14Child extends Test14Parent{
    static {
        System.out.println("Test14Child static block");
    }
}

/**
 * 通过子类调用父类的静态变量和静态方法，都只能算是对父类的主动使用 案例
 */
public class Test14 {
    public static void main(String[] args) {
        /**
         * 输出
         * Test14Parent static block
         * 3
         * Test14Parent.run()
         * 结论：
         *      Test14Child.a是在父类Test14Parent中的，这里实际上是对父类的主动使用，
         *      所以此时只会初始化父类Test14Parent
         *
         *      Test14Child.run()也是定义在父类Test14Parent中，
         *      所以此时子类Test14Child.run不算是对Test14Child的主动使用，所以此时子类也不会初始化
         */
        System.out.println(Test14Child.a);
        Test14Child.run();
    }
}
