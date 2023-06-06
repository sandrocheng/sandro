package com.sandro.classloader;

import java.util.Random;

public class Test6 {

    /**
     * 因为接口是不能写static代码块的，要想验证结论可以把对应的class文件删，看看能否正常运行
     * 如果删掉了某个类，比如Parent，依然能够正常执行，说明此时Parent并没有初始化
     * 如果删除后运行时出错：java.lang.NoClassDefFoundError，说明运行时，需要这个类去初始化
     * @param args
     */
    public static void main(String[] args){
        /**
         * Child.parents是常量，此时在Test6中的常量池中已经存在这个变量了
         * 因此Child和Parent都不会初始化
         */
        System.out.println(Child.parents);
        /**
         * Child2的属性变量在编译期间不确定，所以此时Child2是需要被初始化的
         * 同时做为父类Parent也会被初始化
         */
        System.out.println(Child2.parents);

    }

    interface Parent{
        //接口中的属性，都是public static final的
        int age = 40;
    }

    interface Child extends Parent{
        int parents = 3;
    }

    interface Child2 extends Parent{
        int parents = new Random().nextInt(2);
    }
}
