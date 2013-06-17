package android.support.v4.view;

import android.graphics.Paint;
import android.os.Build.VERSION;
import android.view.View;

public class q
{
  static final x a;

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 17)
      a = new w();
    while (true)
    {
      return;
      if (i >= 16)
        a = new v();
      else if (i >= 14)
        a = new u();
      else if (i >= 11)
        a = new t();
      else if (i >= 9)
        a = new s();
      else
        a = new r();
    }
  }

  public static int a(View paramView)
  {
    return a.a(paramView);
  }

  public static void a(View paramView, int paramInt, Paint paramPaint)
  {
    a.a(paramView, paramInt, paramPaint);
  }

  public static void a(View paramView, Runnable paramRunnable)
  {
    a.a(paramView, paramRunnable);
  }

  public static boolean a(View paramView, int paramInt)
  {
    return a.a(paramView, paramInt);
  }

  public static void b(View paramView)
  {
    a.b(paramView);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.q
 * JD-Core Version:    0.6.2
 */