package com.sandro.classloader;

public class Test7 {
    public static void main(String[] args){
        /**
         * 输出 1， 1，属于正常输出
         */
        System.out.println("Singleton.getInstance().counter1 : " + Singleton.getInstance().counter1);
        System.out.println("Singleton.getInstance().counter2 : " + Singleton.getInstance().counter2);

        System.out.println("----------");

        /**
         * 输出 1，0
         * Singleton2和Singleton的区别是counter2定在构造函数的下面了
         * 这种写法造成了输出的不同
         * 原因：
         *      Singleton2.getInstance() ，这里先调用了类的静态方法，此时是首次主动使用，导致Singleton2开始初始化
         *      初始化是为类的静态变量赋予正确的初始值
         *      在Singleton2初始化的时候，静态变量的初始化赋值是按照代码的顺序执行的
         *          1 counter1静态变量，因为counter1没有赋值，所以不会被初始化，而是默认值0，赋值默认0是连接的准备阶段已经做好了的。
         *          2 private static Singleton2 instance = new Singleton2();
         *            instatnce是静态变量，因此要执行构造函数
         *          3 在构造函数中 执行了counter1 ++ 和 counter2 ++
         *            此时counter1和counter2的当前值是连接的准备阶段已经赋值好的默认值 0 ，再经过运算后，都变成了1
         *          4 public static int counter2 = 0;此时count2会被重新赋值为0
         *       因此 count2 最终变成了0
         *  如果count2没有赋初始值的操作，或者count2不是静态变量而是一个普通的成员变量，那么都不会在初始化的时候执行赋值操作，就可以得到正确的结果了
         *
         */
        System.out.println("Singleton2.getInstance().counter1 : " + Singleton2.getInstance().counter1);
        System.out.println("Singleton2.getInstance().counter2 : " + Singleton2.getInstance().counter2);

        /**
         * 输出 1，1
         * Singleton2和Singleton3的区别是Singleton3的counter2没有赋值
         * 因为counter2没有赋值，因此不会执行初始化赋值的操作
         * 所以counter2最终还是1
         */
        System.out.println("----------");
        System.out.println("Singleton3.getInstance().counter1 : " + Singleton3.getInstance().counter1);
        System.out.println("Singleton3.getInstance().counter2 : " + Singleton3.getInstance().counter2);

    }
}

class Singleton3{
    public static int counter1;

    private static Singleton3 instance = new Singleton3();

    private Singleton3(){
        counter1 ++;
        counter2 ++;
        System.out.println("counter1 : " + counter1);
        System.out.println("counter2 : " + counter2);
    }

    public static int counter2;

    public static Singleton3 getInstance(){
        return instance;
    }
}

class Singleton2{
    public int counter1;

    private static Singleton2 instance = new Singleton2();

    private Singleton2(){
        counter1 ++;
        counter2 ++;
        System.out.println("counter1 : " + counter1);
        System.out.println("counter2 : " + counter2);
    }

    public static int counter2 = 0;

    public static Singleton2 getInstance(){
        return instance;
    }
}
class Singleton{
    public static int counter1;

    public static int counter2 = 0;

    private static Singleton instance = new Singleton();

    private Singleton(){
        counter1 ++;
        counter2 ++;
    }

    public static Singleton getInstance(){
        return instance;
    }
}
