package com.sandro.classloader;

/**
 * 编译期常量与运行期常量的区别
 */
public class Test4 {
    public static void main(String[] args) {



        /**
         * Parent.UUID虽然是final的静态字符串，但是此时通过调用Parent.UUID,Parent的类依然初始化了
         * 原因：
         *      编译期间STR这个常量是不能确定的，这就会导致目标类只能在运行期间初始化并执行获取uuid的操作
         */
        System.out.println(Parent.UUID);
        //这个常量调用的静态方法虽然只是简单的返回一个值，依然不能在编译期间确定值，所以Parent类还是会被初始化
        System.out.println(Parent.RESULT);
    }

    static class Parent{
        public static final String UUID = java.util.UUID.randomUUID().toString();

        public static final int RESULT = Data.getResult();

        static{
            System.out.println("parent static code");
        }
    }
}
class Data{
    public static int getResult(){
        return 5;
    }
}
