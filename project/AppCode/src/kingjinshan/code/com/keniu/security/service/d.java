package com.keniu.security.service;

import android.content.Context;
import android.util.Log;
import com.keniu.security.monitor.b;
import com.keniu.security.util.at;

public final class d
  implements b
{
  private static final String a = "ReportServiceMonitor";
  private static boolean b = false;
  private static d c;
  private static Context d;

  public static void a()
  {
    try
    {
      boolean bool = b;
      if (bool);
      while (true)
      {
        return;
        b = true;
        if (c == null)
        {
          c = new d();
          com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.n, c, 1342177279);
        }
      }
    }
    finally
    {
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if (paramInt == com.keniu.security.monitor.a.n)
    {
      Log.d("ReportServiceMonitor", "monitorNotify");
      Context localContext = ((Context)paramObject1).getApplicationContext();
      d = localContext;
      if (at.c(localContext))
        com.jxphone.mosecurity.a.a.a(d);
    }
    return 1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.d
 * JD-Core Version:    0.6.2
 */