package com.avast.android.generic.e;

import android.os.Build;
import android.os.Build.VERSION;

public class a
{
  static
  {
    if (Build.VERSION.SDK_INT < 9)
      throw new RuntimeException("Newer SDK");
  }

  public static a a()
  {
    return new a();
  }

  public String b()
  {
    String str = Build.SERIAL;
    if ((str != null) && (str.equals("unknown")))
      str = null;
    return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.e.a
 * JD-Core Version:    0.6.2
 */