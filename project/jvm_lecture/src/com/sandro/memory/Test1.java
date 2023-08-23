package com.sandro.memory;

import java.util.ArrayList;
import java.util.List;

public class Test1 {
    private int[][] array = new int[10][10];
    public static void main(String[] args) throws InterruptedException {
        List<Test1> list = new ArrayList<>();
        for(;;){
            list.add(new Test1());
//            Thread.sleep(1);
//            System.gc();
        }
    }
}
