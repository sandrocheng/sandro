package com.sandroC;

import org.junit.Assert;
import org.junit.Test;

public class ExCTest {

    @Test
    public void testGetName(){
        ExC ex = new ExC();
        Assert.assertEquals("Exc",ex.getName());
    }

    public void test(){
        System.out.println("source code plugin...");
    }
}
