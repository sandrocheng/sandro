package com.sandro.gc;

//-verbose:gc -Xms20M -Xmx20M -Xmn10M -XX:+PrintGCDetails -XX:SurvivorRatio=8 -XX:+UseConcMarkSweepGC
public class Test5 {
    public static void main(String[] args) {
        int size = 1024 * 1024;
        byte[] myAlloc1 = new byte[4 * size];
        System.out.println("finish1---------------");
        byte[] myAlloc2 = new byte[4 * size];
        System.out.println("finish2---------------");
        byte[] myAlloc3 = new byte[4 * size];
        System.out.println("finish3---------------");
        byte[] myAlloc4 = new byte[2 * size];
        System.out.println("finish4---------------");
    }
}
