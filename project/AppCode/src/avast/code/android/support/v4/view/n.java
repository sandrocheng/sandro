package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public class n
{
  static final q a;

  static
  {
    if (Build.VERSION.SDK_INT >= 11);
    for (a = new p(); ; a = new o())
      return;
  }

  public static boolean a(KeyEvent paramKeyEvent)
  {
    return a.b(paramKeyEvent.getMetaState());
  }

  public static boolean a(KeyEvent paramKeyEvent, int paramInt)
  {
    return a.a(paramKeyEvent.getMetaState(), paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.n
 * JD-Core Version:    0.6.2
 */