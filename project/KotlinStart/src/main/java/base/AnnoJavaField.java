package base;

import annotation.KTAnnoJvmField;

import java.util.ArrayList;
import java.util.List;

public class AnnoJavaField {
    public static void main(String[] args){
        KTAnnoJvmField f = new KTAnnoJvmField();
        for(int age : f.getAges()){
            System.out.println(age);
        }
        for(String name : f.names){
            System.out.println(name);
        }
    }
}
