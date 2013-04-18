package com.hoi.netstat;

import android.content.Context;
import android.net.TrafficStats;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.ArrayList;

public final class i
  implements g
{
  private static NetStatJni a = new NetStatJni();
  private static int b = 3;

  static
  {
    try
    {
      b = Integer.parseInt(Build.VERSION.SDK.trim());
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        Log.w("NetStatJni", "Unavailable SDK Level value: " + Build.VERSION.SDK);
    }
  }

  public final long a()
  {
    long l;
    if (b >= 8)
    {
      l = TrafficStats.getTotalTxBytes();
      if (l == -1L);
    }
    while (true)
    {
      return l;
      l = a.a();
    }
  }

  public final long a(int paramInt)
  {
    long l;
    if (b >= 8)
    {
      l = TrafficStats.getUidTxBytes(paramInt);
      if (l == -1L);
    }
    while (true)
    {
      return l;
      l = a.a(paramInt);
    }
  }

  public final long a(Context paramContext)
  {
    long l;
    if (b >= 8)
    {
      l = TrafficStats.getMobileTxBytes();
      if (l == -1L);
    }
    while (true)
    {
      return l;
      l = a.a(paramContext);
    }
  }

  public final long a(String paramString)
  {
    return a.a(paramString);
  }

  public final long b()
  {
    long l;
    if (b >= 8)
    {
      l = TrafficStats.getTotalRxBytes();
      if (l == -1L);
    }
    while (true)
    {
      return l;
      l = a.b();
    }
  }

  public final long b(int paramInt)
  {
    long l;
    if (b >= 8)
    {
      l = TrafficStats.getUidRxBytes(paramInt);
      if (l == -1L);
    }
    while (true)
    {
      return l;
      l = a.b(paramInt);
    }
  }

  public final long b(Context paramContext)
  {
    long l;
    if (b >= 8)
    {
      l = TrafficStats.getMobileRxBytes();
      if (l == -1L);
    }
    while (true)
    {
      return l;
      l = a.b(paramContext);
    }
  }

  public final long b(String paramString)
  {
    return a.b(paramString);
  }

  public final ArrayList c()
  {
    return new ArrayList();
  }

  public final ArrayList d()
  {
    return new ArrayList();
  }

  public final long e()
  {
    return a.e();
  }

  public final long f()
  {
    return a.f();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.i
 * JD-Core Version:    0.6.2
 */