package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.a;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ui.b.d;
import com.avast.android.generic.util.n;
import com.avast.android.generic.util.z;

public class a extends d
{
  public a()
  {
    super(2131493122, 2131493851);
  }

  public static boolean a(Context paramContext)
  {
    String str = z.b(paramContext);
    boolean bool1 = false;
    if (str == null);
    while (true)
    {
      return bool1;
      boolean bool2 = d();
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = com.avast.android.mobilesecurity.app.home.antitheft.a.a.a(paramContext, str);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  private static boolean d()
  {
    try
    {
      com.avast.android.mobilesecurity.app.home.antitheft.a.a.a();
      bool = true;
      return bool;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        boolean bool = false;
    }
  }

  public String a()
  {
    return "Device Admin is enabled";
  }

  public boolean a(Context paramContext, Fragment paramFragment)
  {
    boolean bool = true;
    String str = z.b(paramContext);
    if (str != null)
    {
      if (z.b(paramContext, 3940) == null)
        break label46;
      z.a(paramContext, str, new Intent("com.avast.android.antitheft.action.DISABLE_DEVICE_ADMIN"));
      SystemClock.sleep(500L);
    }
    while (true)
    {
      return bool;
      try
      {
        label46: n.a(paramFragment, str);
        bool = false;
      }
      catch (Exception localException)
      {
        while (true)
          com.avast.android.generic.a.a(paramContext, paramContext.getString(2131493853));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.a.a
 * JD-Core Version:    0.6.2
 */