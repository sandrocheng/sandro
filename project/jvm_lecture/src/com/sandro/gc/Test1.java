package com.sandro.gc;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.TreeMap;
import java.util.TreeSet;

public class Test1 {

    public static void main(String[] args) {
        int size = 1024 * 1024;
        TreeMap l;
        //没有GC发生
//        byte[] myAlloc1 = new byte[3*size];
//        byte[] myAlloc2 = new byte[3*size];

        //这种情况只有GC发生
//        byte[] myAlloc1 = new byte[3*size];
//        byte[] myAlloc2 = new byte[3*size];
//        byte[] myAlloc3 = new byte[1024 * 520];

        //GC 和 FullGC都发生了
        byte[] myAlloc1 = new byte[2*size];
        byte[] myAlloc2 = new byte[3*size];
        byte[] myAlloc3 = new byte[3*size];

        //这种情况没有FullGC发生
//        byte[] myAlloc1 = new byte[2*size];
//        byte[] myAlloc2 = new byte[2*size];
//        byte[] myAlloc3 = new byte[3*size];
//        byte[] myAlloc4 = new byte[3*size];
        System.out.println("hello world");
    }
}
