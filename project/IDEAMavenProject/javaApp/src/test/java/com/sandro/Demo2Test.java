package com.sandro;

import junit.framework.Assert;
import org.junit.Test;

public class Demo2Test {

    @Test
    public void testSay(){
        Demo2 demo = new Demo2();
        String str = demo.say("maven");
        Assert.assertEquals("hello maven",str);
    }
}
