package com.sandro.bytecode;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.ServerSocket;

public class Test4 {
    public void test(){
        try{
            InputStream is = new FileInputStream("aaa.txt");
            is.close();
            ServerSocket sc = new ServerSocket(9999);
            sc.accept();
        }
        catch (FileNotFoundException e){}
        catch(IOException e){}
        catch (Exception e){}
        finally {
            System.out.println("finally");
        }
    }
}
