package com.SandroB;

import com.sandroB.ExB;
import junit.framework.Assert;
import org.junit.Test;

public class ExBTest {

    @Test
    public void testGetName(){
        ExB ex = new ExB();
        Assert.assertEquals(ex.getName(),"ExB");
    }
}
