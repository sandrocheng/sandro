package com.sandro.classloader;

import java.util.Random;

public class Test8 {
    public static void main(String[] args) {
        /**
         * FinalTest.x是常量，所以此时FinalTest不会初始化 static代码块也不会执行
         */
        System.out.println(FinalTest.x);

        /**
         * 静态变量的读取会导致类的初始化，所以会执行static代码块
         */
        System.out.println(FinalTest.y);

        /**
         * 对于编译期间不能确定的常量被读取时，由于这个常量不在常量池中，所以此时FinalTest2会初始化
         */
        System.out.println(FinalTest2.x);
    }
}

class FinalTest2{
    public static final int x = new Random().nextInt();
    static {
        System.out.println("FinalTest2 static block");
    }

}

class FinalTest{
    public static final int x = 3;
    public static int y = 2;
    static {
        System.out.println("FinalTest static block");
    }
}
