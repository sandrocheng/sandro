package com.sandro.gc;

public class Test2 {
    public static void main(String[] args) throws InterruptedException {
        int size = 1024 * 1024;

        byte[] myAlloc = new byte[5*size];

        Thread.sleep(1000000);
    }
}
