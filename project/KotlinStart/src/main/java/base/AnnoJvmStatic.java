package base;

import annotation.MyClass;
import annotation.MyClass2;

public class AnnoJvmStatic {
    public static void main(String[] args){
        MyClass.Companion.showTar("sandro");
        System.out.println(MyClass.Companion.getTarget());

        MyClass2.showTar("joy");
        System.out.println(MyClass2.getTarget());
    }
}
