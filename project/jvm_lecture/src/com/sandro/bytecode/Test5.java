package com.sandro.bytecode;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.ServerSocket;

public class Test5 {
    public void test() throws IOException ,ExceptionInInitializerError  {
        InputStream is = new FileInputStream("aaa.txt");
        is.close();
        ServerSocket sc = new ServerSocket(9999);
        sc.accept();
    }
}
