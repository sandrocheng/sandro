package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.MotionEvent;

public class s
{
  static final v a;

  static
  {
    if (Build.VERSION.SDK_INT >= 5);
    for (a = new u(); ; a = new t())
      return;
  }

  public static int a(MotionEvent paramMotionEvent)
  {
    return (0xFF00 & paramMotionEvent.getAction()) >> 8;
  }

  public static int a(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.a(paramMotionEvent, paramInt);
  }

  public static int b(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.b(paramMotionEvent, paramInt);
  }

  public static float c(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.c(paramMotionEvent, paramInt);
  }

  public static float d(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.d(paramMotionEvent, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.s
 * JD-Core Version:    0.6.2
 */