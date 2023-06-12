package com.sandro.classloader;

import java.util.ArrayList;
import java.util.List;

/**
 * 对于静态字段来说，只有直接定义了这个字段的类在首次主动使用的时候才会初始化，通过子类调用父类的静态字段，子类不会在首次主动使用的时候初始化
 */
public class Test3 {
    public static void main(String[] args) {
        /**
         * Parent.STR 是final的 此时Parent中的static代码块并没有执行
         * 原因：
         *      final修饰的字符串和java基本类型是常量，在编译阶段这个常量就已经保存在调用这个常量的方法所在类的常量池中了
         *      也就是说Parent.STR在编译期间就已经放在Test3这个类的常量池中了，所以此时Parent并没有被初始化
         *      甚至此时把Parent的class文件删除也不影响运行
         *      通过 javap -c com.sandro.classloader.Test3反编译，可以看到此时的Parent.STR就是一个字符串常量,而不是引用
         *
         *
         */
        System.out.println(Parent.STR);
        System.out.println(Parent.shortValue);

        /**
         * 当调用Parent中的list的时候，Parent才会初始化
         * 原因，虽然list是final，但是list不在常量池中，此时属于首次主动调用，所以Parent会初始化
         */
        System.out.println("list size is " + Parent.list.size());
    }

    static class Parent{
        public static final String STR = "hello world";
        public static final short shortValue = 567;
        public static final List<Integer> list = new ArrayList();

        static{
            System.out.println("Parent static block start");
        }
    }
}




