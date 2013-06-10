package org.antivirus.core.scanners;

import android.content.Context;
import android.os.Handler;
import android.provider.Settings.Secure;
import java.io.File;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;

public class ac extends j
{
  private int g;

  protected ac(EngineSettings paramEngineSettings, Handler paramHandler)
  {
    this(paramEngineSettings, paramHandler, 7);
  }

  public ac(EngineSettings paramEngineSettings, Handler paramHandler, int paramInt)
  {
    super(paramEngineSettings, paramHandler, null);
    this.a = new ad();
    this.g = paramInt;
    int i = paramEngineSettings.getIgnoreSettings();
    this.g &= (i ^ 0xFFFFFFFF);
  }

  public static void a(Context paramContext, g paramg, ad paramad)
  {
    if (paramad.d)
    {
      boolean bool3 = c(paramContext);
      paramg.d.d = bool3;
    }
    if (paramad.c)
    {
      boolean bool2 = b(paramContext);
      paramg.d.c = bool2;
    }
    if (paramad.b)
    {
      boolean bool1 = b();
      paramg.d.b = bool1;
    }
  }

  private static boolean b()
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
            Logger.log((Exception)localObject);
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

  public static boolean b(Context paramContext)
  {
    boolean bool1 = false;
    try
    {
      String str = Settings.Secure.getString(paramContext.getContentResolver(), "install_non_market_apps");
      bool1 = false;
      if (str != null)
        if (str.equals(""))
        {
          bool1 = false;
        }
        else
        {
          boolean bool2 = "1".equals(str);
          bool1 = bool2;
        }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
    return bool1;
  }

  public static boolean c(Context paramContext)
  {
    boolean bool1 = false;
    try
    {
      String str = Settings.Secure.getString(paramContext.getContentResolver(), "adb_enabled");
      bool1 = false;
      if (str != null)
        if (str.equals(""))
        {
          bool1 = false;
        }
        else
        {
          boolean bool2 = "1".equals(str);
          bool1 = bool2;
        }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
    return bool1;
  }

  public final void a(Context paramContext)
  {
    ad localad = (ad)this.a;
    localad.a = true;
    if ((0x4 & this.g) != 0)
      localad.d = c(paramContext);
    if ((0x2 & this.g) != 0)
      localad.c = b(paramContext);
    if ((0x1 & this.g) != 0)
      localad.b = b();
    localad.e();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.ac
 * JD-Core Version:    0.6.2
 */