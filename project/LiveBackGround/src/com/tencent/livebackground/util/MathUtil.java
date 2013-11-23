package com.tencent.livebackground.util;


public class MathUtil
{

    public MathUtil()
    {
    }

    public static float clamp(float f, float minValue, float maxValue)
    {
        if(f < minValue)
            f = minValue;
        else
        if(f > maxValue)
            return maxValue;
        return f;
    }

    public static int clamp(int i, int minValue, int maxValue)
    {
        if(i < minValue)
            i = minValue;
        else
        if(i > maxValue)
            return maxValue;
        return i;
    }
}
