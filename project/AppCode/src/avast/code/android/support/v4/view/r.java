package android.support.v4.view;

import android.view.KeyEvent;

class r
{
  public static boolean a(int paramInt)
  {
    return KeyEvent.metaStateHasNoModifiers(paramInt);
  }

  public static boolean a(int paramInt1, int paramInt2)
  {
    return KeyEvent.metaStateHasModifiers(paramInt1, paramInt2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.r
 * JD-Core Version:    0.6.2
 */