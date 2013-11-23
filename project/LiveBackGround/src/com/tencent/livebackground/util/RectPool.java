package com.tencent.livebackground.util;

import android.graphics.Rect;
import java.util.ArrayList;

public class RectPool
{

    public RectPool()
    {
    }

    public static Rect obtainRect()
    {
        if(mRectPool.isEmpty())
            return new Rect();
        else
            return (Rect)mRectPool.remove(-1 + mRectPool.size());
    }

    public static void recycleRect(Rect rect)
    {
        if(rect != null)
        {
            rect.setEmpty();
            mRectPool.add(rect);
        }
    }

    private static ArrayList<Rect> mRectPool = new ArrayList<Rect>(4);

}
