package com.jxphone.mosecurity.d;

import android.text.TextUtils;

public final class f
{
  public static volatile String a;
  public static String b;
  public static String c;

  public static void a(String paramString1, String paramString2)
  {
    b = paramString1;
    c = paramString2;
  }

  public static boolean b(String paramString1, String paramString2)
  {
    boolean bool;
    if ((TextUtils.isEmpty(b)) || (TextUtils.isEmpty(c)))
      bool = false;
    while (true)
    {
      return bool;
      if ((b.equalsIgnoreCase(paramString1)) && (c.equalsIgnoreCase(paramString2)))
        bool = true;
      else
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.f
 * JD-Core Version:    0.6.2
 */