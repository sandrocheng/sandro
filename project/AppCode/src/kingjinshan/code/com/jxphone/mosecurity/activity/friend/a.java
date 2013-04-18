package com.jxphone.mosecurity.activity.friend;

import android.util.Log;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class a extends GestureDetector.SimpleOnGestureListener
{
  a(BaseTabActivity paramBaseTabActivity)
  {
  }

  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    try
    {
      if (Math.abs(paramMotionEvent1.getY() - paramMotionEvent2.getY()) <= 250.0F)
      {
        if ((paramMotionEvent1.getX() - paramMotionEvent2.getX() > 120.0F) && (Math.abs(paramFloat1) > 200.0F))
        {
          Log.i("test ", "right");
          if (BaseTabActivity.a == this.a.b - 1);
          for (BaseTabActivity.a = 0; ; BaseTabActivity.a = 1 + BaseTabActivity.a)
          {
            this.a.a(BaseTabActivity.a);
            break;
          }
        }
        if ((paramMotionEvent2.getX() - paramMotionEvent1.getX() <= 120.0F) || (Math.abs(paramFloat1) <= 200.0F))
          break label174;
        Log.i("test ", "left");
        if (BaseTabActivity.a == 0);
        for (BaseTabActivity.a = this.a.b - 1; ; BaseTabActivity.a -= 1)
        {
          this.a.a(BaseTabActivity.a);
          break;
        }
      }
      label174: 
      while (true)
        return false;
    }
    catch (Exception localException)
    {
      break label174;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.a
 * JD-Core Version:    0.6.2
 */