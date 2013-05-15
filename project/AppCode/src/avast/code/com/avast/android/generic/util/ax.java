package com.avast.android.generic.util;

import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;

public class ax
{
  private static volatile PowerManager.WakeLock a = null;
  private static volatile PowerManager.WakeLock b = null;
  private static Object c = new Object();

  public static void a()
  {
    synchronized (c)
    {
      try
      {
        if (b != null)
          while (b.isHeld())
            b.release();
      }
      catch (Exception localException)
      {
        return;
      }
      b = null;
      t.a("AvastWL", "Partial wakelock released");
      b();
    }
  }

  public static void a(Context paramContext)
  {
    synchronized (c)
    {
      if (b == null)
      {
        b = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "PW " + paramContext.getPackageName());
        b.setReferenceCounted(true);
      }
      b.acquire();
      t.a("AvastWL", "Partial wakelock acquired");
      b();
      return;
    }
  }

  public static void a(Context paramContext, long paramLong)
  {
    synchronized (c)
    {
      ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "LW " + paramContext.getPackageName()).acquire(paramLong);
      t.a("AvastWL", "Launch wakelock acquired, will be released in " + paramLong + " milliseconds automatically");
      return;
    }
  }

  private static void b()
  {
  }

  public static void b(Context paramContext)
  {
    a(paramContext, 1000L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ax
 * JD-Core Version:    0.6.2
 */