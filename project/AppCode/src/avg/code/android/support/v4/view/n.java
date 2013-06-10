package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;

public final class n
{
  static final r a;

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
      a = new q();
    while (true)
    {
      return;
      if (i >= 9)
        a = new p();
      else
        a = new o();
    }
  }

  public static int a(View paramView)
  {
    return a.a(paramView);
  }

  public static boolean a(View paramView, int paramInt)
  {
    return a.a(paramView, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.n
 * JD-Core Version:    0.6.2
 */