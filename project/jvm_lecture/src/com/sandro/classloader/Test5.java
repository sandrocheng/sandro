package com.sandro.classloader;

public class Test5 {
    public static void main(String[] args) {
        /**
         * new出一个类的实例的时候，属于主动使用，首次主动使用的时候类会初始化
         */
        Parent p = new Parent();

        /**
         * 此时Parent2没有初始化
         * 因为这句话是类数组的实例化，并不是类的实例化，所以Parent2不会初始化
         * class [Lcom.sandro.classloader.Test5$Parent2;
         */
        Parent2[] ps = new Parent2[3];
        System.out.println(ps.getClass());

        /**
         * 二维数组实例，依然不会让Parent2类初始化
         * class [[Lcom.sandro.classloader.Test5$Parent2;
         */
        Parent2[][] pss = new Parent2[1][1];
        System.out.println(pss.getClass());

        int nums[] = new int[2];
        System.out.println(nums.getClass());//class [I
        System.out.println(nums.getClass().getSuperclass());//class java.lang.Object
    }

    static class Parent{
        static{
            System.out.println("Parent static block");
        }
    }

    static class Parent2{
        static{
            System.out.println("Parent2 static block");
        }
    }
}
