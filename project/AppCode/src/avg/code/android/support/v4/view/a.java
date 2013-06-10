package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public final class a
{
  static final d a;

  static
  {
    if (Build.VERSION.SDK_INT >= 11);
    for (a = new c(); ; a = new b())
      return;
  }

  public static boolean a(KeyEvent paramKeyEvent)
  {
    return a.a(paramKeyEvent.getMetaState());
  }

  public static boolean b(KeyEvent paramKeyEvent)
  {
    return a.b(paramKeyEvent.getMetaState());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.a
 * JD-Core Version:    0.6.2
 */