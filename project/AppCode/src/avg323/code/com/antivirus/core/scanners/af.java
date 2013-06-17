package com.antivirus.core.scanners;

import android.content.Context;
import android.os.Handler;
import android.provider.Settings.Secure;
import com.antivirus.core.b;
import com.avg.toolkit.f.a;
import java.io.File;

public class af extends k
{
  private int f;

  protected af(b paramb, Handler paramHandler)
  {
    this(paramb, paramHandler, 7);
  }

  public af(b paramb, Handler paramHandler, int paramInt)
  {
    super(paramb, paramHandler, null, null);
    this.a = new ag();
    this.f = paramInt;
    int i = paramb.j();
    this.f &= (i ^ 0xFFFFFFFF);
  }

  private boolean c()
  {
    try
    {
      bool2 = new File("/system/bin/su").exists();
      if (bool2);
    }
    catch (Exception localException3)
    {
      while (true)
      {
        boolean bool2;
        try
        {
          boolean bool4 = new File("/system/xbin/su").exists();
          bool1 = bool4;
          if (bool1);
        }
        catch (Exception localException3)
        {
          try
          {
            boolean bool3 = new File("/system/sbin/su").exists();
            bool1 = bool3;
            return bool1;
            localException1 = localException1;
            bool1 = false;
            Object localObject = localException1;
            a.a((Exception)localObject);
            continue;
            localException3 = localException3;
            bool1 = bool2;
            localObject = localException3;
            continue;
          }
          catch (Exception localException2)
          {
            continue;
          }
        }
        boolean bool1 = bool2;
      }
    }
  }

  private boolean c(Context paramContext)
  {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "install_non_market_apps");
    if ((str == null) || (str.equals("")));
    for (boolean bool = false; ; bool = "1".equals(str))
      return bool;
  }

  private boolean d(Context paramContext)
  {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "adb_enabled");
    if ((str == null) || (str.equals("")));
    for (boolean bool = false; ; bool = "1".equals(str))
      return bool;
  }

  public void a(Context paramContext, h paramh, ag paramag)
  {
    if (paramag.d)
    {
      boolean bool3 = b(paramContext);
      paramh.d.d = bool3;
    }
    if (paramag.c)
    {
      boolean bool2 = a(paramContext);
      paramh.d.c = bool2;
    }
    if (paramag.b)
    {
      boolean bool1 = c();
      paramh.d.b = bool1;
    }
  }

  public void a(Context paramContext, boolean paramBoolean)
  {
    ag localag = (ag)this.a;
    localag.a = true;
    if ((0x4 & this.f) != 0)
    {
      boolean bool3 = b(paramContext);
      localag.d = bool3;
      if (!bool3);
    }
    if ((0x2 & this.f) != 0)
    {
      boolean bool2 = a(paramContext);
      localag.c = bool2;
      if (!bool2);
    }
    if ((0x1 & this.f) != 0)
    {
      boolean bool1 = c();
      localag.b = bool1;
      if (!bool1);
    }
    localag.e();
  }

  public boolean a(Context paramContext)
  {
    try
    {
      boolean bool2 = c(paramContext);
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a(localException);
        boolean bool1 = false;
      }
    }
  }

  public boolean b(Context paramContext)
  {
    try
    {
      boolean bool2 = d(paramContext);
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a(localException);
        boolean bool1 = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.af
 * JD-Core Version:    0.6.2
 */