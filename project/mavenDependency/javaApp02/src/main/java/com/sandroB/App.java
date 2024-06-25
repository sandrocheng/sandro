package com.sandroB;

import com.sandroC.ExC;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( new ExB().getName() );
        new ExC().say(" hello ");
    }
}
