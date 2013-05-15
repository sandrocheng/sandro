package com.avast.android.mobilesecurity.app.scanner;

import com.avast.android.generic.util.m;
import java.util.HashMap;
import java.util.Map;

public class h
{
  private static final Object a = new Object();
  private static h b;
  private Map c = new HashMap();

  public static h a()
  {
    if (b == null);
    synchronized (a)
    {
      if (b == null)
        b = new h();
      return b;
    }
  }

  public boolean a(String paramString)
  {
    long l2;
    if (this.c.containsKey(paramString))
    {
      long l1 = ((Long)this.c.get(paramString)).longValue();
      l2 = System.currentTimeMillis() - l1;
      if (l2 <= 900000L)
        m.b("RealtimeAllowedApps", "Application '" + paramString + "' is allowed for " + (900000L - l2) / 1000L / 60L + " more minutes.");
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      m.b("RealtimeAllowedApps", "Application '" + paramString + "' permit expired before " + (l2 - 900000L) / 1000L / 60L + " minutes.");
      this.c.remove(paramString);
    }
  }

  public void b(String paramString)
  {
    m.b("RealtimeAllowedApps", "Application '" + paramString + "' was allowed for 15m.");
    this.c.put(paramString, Long.valueOf(System.currentTimeMillis()));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.h
 * JD-Core Version:    0.6.2
 */