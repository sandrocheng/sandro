package com.sandro.classloader;

class Test12Parent{
    static int a = 3;
    static{
        System.out.println("Test12Parent static block");
    }
}

class Test12Child extends Test12Parent{
    static int b = 4;
    static{
        System.out.println("Test12Child static block");
    }
}

public class Test12 {
    static {
        System.out.println("Test12 static block");
    }
    public static void main(String[] args) {

        /**
         * 输出
         * Test12 static block ， 主类静态代码块先执行
         * Test12Parent static block ， 父类静态代码块执行
         * Test12Child static block ， 子类静态代码块执行
         * 4 ，main方法调用Test12Child.b
         *
         * 类的加载顺序：
         * [Loaded com.sandro.classloader.Test12 from file:/home/sandro/mywork/gitwork/sandro/project/jvm_lecture/out/production/jvm_lecture/]
         * ....
         * Test12 static block
         * [Loaded com.sandro.classloader.Test12Parent from file:/home/sandro/mywork/gitwork/sandro/project/jvm_lecture/out/production/jvm_lecture/]
         * [Loaded com.sandro.classloader.Test12Child from file:/home/sandro/mywork/gitwork/sandro/project/jvm_lecture/out/production/jvm_lecture/]
         * Test12Parent static block
         * Test12Child static block
         * 4
         * 结论：主类先加载，然后加载父类，最后加载子类
         */
        System.out.println(Test12Child.b);
    }
}
