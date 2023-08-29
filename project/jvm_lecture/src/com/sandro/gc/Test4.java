package com.sandro.gc;

import javax.sound.midi.Soundbank;

public class Test4 {
    public static void main(String[] args) throws InterruptedException {
        //这两个数组在不断的gc的时候，由于没有释放，所以一直在surivior中来回复制存活
        //年龄会不断增加
        byte[] byte1 = new byte[512 * 1204];
        byte[] byte2 = new byte[512 * 1024];
        createObjs();//这里的内存会不断创建，被gc回收
        Thread.sleep(1000);
        System.out.println("finish1---------------");
        createObjs();
        Thread.sleep(1000);
        System.out.println("finish2---------------");
        createObjs();
        System.out.println("finish3---------------");
        createObjs();
        System.out.println("finish4---------------");

        byte[] byte3 = new byte[1024*1024];
        byte[] byte4 = new byte[1024*1024];
        byte[] byte5 = new byte[1024*1024];
        createObjs();
        Thread.sleep(1000);
        System.out.println("finish5---------------");

        createObjs();
        Thread.sleep(1000);
        System.out.println("finish6---------------");
        System.out.println("finish all------------");
    }

    private static void createObjs(){
        for(int i=0;i<40;i++){
            byte[] array = new byte[1024 * 1024];
        }
    }
}
