package com.avast.android.mobilesecurity.app.locking.core;

import java.util.HashSet;
import java.util.Set;

public class h
{
  private static Set a = new HashSet();

  public static void a()
  {
    a.clear();
  }

  public static boolean a(App paramApp)
  {
    boolean bool1 = paramApp.i;
    boolean bool2 = false;
    if (!bool1)
    {
      bool2 = a.contains("COMMON");
      if (bool2)
        a.add(paramApp.e);
    }
    return bool2 | a.contains(paramApp.e);
  }

  public static void b(App paramApp)
  {
    String str = paramApp.e;
    if (!paramApp.i)
      a.add("COMMON");
    a.add(str);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.core.h
 * JD-Core Version:    0.6.2
 */