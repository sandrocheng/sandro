package com.hoi.netstat;

import android.os.Build.VERSION;
import android.util.Log;

public final class f
{
  private static int a = 3;

  static
  {
    try
    {
      a = Integer.parseInt(Build.VERSION.SDK.trim());
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        Log.w("NetStatJni", "Unavailable SDK Level value: " + Build.VERSION.SDK);
    }
  }

  public static g a()
  {
    return new NetStatJni();
  }

  public static boolean b()
  {
    if (a >= 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static g c()
  {
    if (a >= 8);
    for (Object localObject = new i(); ; localObject = new NetStatJni())
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.f
 * JD-Core Version:    0.6.2
 */