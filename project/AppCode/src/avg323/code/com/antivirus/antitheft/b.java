package com.antivirus.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import com.antivirus.AVService;

public class b
{
  public static void a(Context paramContext)
  {
    try
    {
      AVService.a(paramContext, 4000, 9002, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public static void a(Context paramContext, Handler paramHandler)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("__SAH", new Messenger(paramHandler));
      localBundle.putBoolean("isUI", true);
      AVService.a(paramContext, 4000, 9008, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public static void a(Context paramContext, w paramw)
  {
    Bundle localBundle;
    try
    {
      localBundle = new Bundle();
      if (paramw != null)
        synchronized (w.a)
        {
          localBundle.putDouble("gpslng", paramw.b());
          localBundle.putDouble("gpslat", paramw.a());
          localBundle.putDouble("gpsacc", paramw.e());
          localBundle.putLong("gpstim", paramw.f());
        }
    }
    catch (Exception localException)
    {
      synchronized (w.b)
      {
        localBundle.putDouble("netlng", paramw.d());
        localBundle.putDouble("netlat", paramw.c());
        localBundle.putDouble("netacc", paramw.g());
        localBundle.putLong("nettim", paramw.h());
        com.antivirus.core.a.a(paramContext, 4000, 9005, localBundle);
        return;
        localObject6 = finally;
        throw localObject6;
        localException = localException;
        com.avg.toolkit.f.a.a(localException);
      }
    }
    synchronized (w.a)
    {
      while (true)
      {
        localBundle.putDouble("gpslng", 0.0D);
        localBundle.putDouble("gpslat", 0.0D);
        localBundle.putDouble("gpsacc", 0.0D);
        localBundle.putLong("gpstim", 0L);
        synchronized (w.b)
        {
          localBundle.putDouble("netlng", 0.0D);
          localBundle.putDouble("netlat", 0.0D);
          localBundle.putDouble("netacc", 0.0D);
          localBundle.putLong("nettim", 0L);
        }
      }
    }
  }

  public static void a(Context paramContext, String paramString, Handler paramHandler)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("__SAH", new Messenger(paramHandler));
      localBundle.putString("adminEmail", paramString);
      localBundle.putBoolean("isUI", true);
      AVService.a(paramContext, 4000, 9001, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public static void b(Context paramContext)
  {
    try
    {
      AVService.a(paramContext, 4000, 9004, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.b
 * JD-Core Version:    0.6.2
 */