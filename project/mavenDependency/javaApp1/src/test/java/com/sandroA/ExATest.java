package com.sandroA;

import junit.framework.Assert;
import org.junit.Test;

public class ExATest {

    @Test
    public void testGetName(){
        Assert.assertEquals("ExA",new ExA().getName());
    }
}
