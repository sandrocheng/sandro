package com.avast.android.mobilesecurity.app.fileshield;

import com.avast.android.generic.util.m;
import java.util.HashMap;
import java.util.Map;

public class e
{
  private static final Object a = new Object();
  private static e b;
  private Map c = new HashMap();

  public static e a()
  {
    if (b == null);
    synchronized (a)
    {
      if (b == null)
        b = new e();
      return b;
    }
  }

  public boolean a(String paramString)
  {
    boolean bool;
    if (this.c.containsKey(paramString))
    {
      long l1 = ((Long)this.c.get(paramString)).longValue();
      long l2 = System.currentTimeMillis() - l1;
      if (l2 <= 900000L)
      {
        m.b("StorageShieldAllowedFiles", "File '" + paramString + "' is allowed for " + (900000L - l2) / 1000L / 60L + " more minutes.");
        bool = true;
        return bool;
      }
      m.b("StorageShieldAllowedFiles", "File '" + paramString + "' permit expired before " + (l2 - 900000L) / 1000L / 60L + " minutes.");
      this.c.remove(paramString);
    }
    while (true)
    {
      bool = false;
      break;
      m.b("StorageShieldAllowedFiles", "File '" + paramString + "' is not allowed.");
    }
  }

  public void b(String paramString)
  {
    m.b("StorageShieldAllowedFiles", "File '" + paramString + "' was allowed for 15m.");
    this.c.put(paramString, Long.valueOf(System.currentTimeMillis()));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.e
 * JD-Core Version:    0.6.2
 */