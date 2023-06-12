package com.sandro.classloader.classes;

public class MyCat {
    public MyCat(){
        System.out.println("MyCat is loaded by : " + this.getClass().getClassLoader());
    }
}
