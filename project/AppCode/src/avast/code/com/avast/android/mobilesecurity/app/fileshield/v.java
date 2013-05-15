package com.avast.android.mobilesecurity.app.fileshield;

import com.avast.android.generic.util.m;
import java.util.HashSet;
import java.util.Set;

public class v
{
  private static final Object a = new Object();
  private static v b;
  private Set c = new HashSet();

  public static v a()
  {
    if (b == null);
    synchronized (a)
    {
      if (b == null)
        b = new v();
      return b;
    }
  }

  public boolean a(String paramString)
  {
    if (this.c.contains(paramString))
      m.b("StorageShieldWaitingUserEvents", "File '" + paramString + "' is waiting.");
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void b(String paramString)
  {
    m.b("StorageShieldWaitingUserEvents", "File '" + paramString + "' added.");
    this.c.add(paramString);
  }

  public void c(String paramString)
  {
    m.b("StorageShieldWaitingUserEvents", "File '" + paramString + "' removed.");
    this.c.remove(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.v
 * JD-Core Version:    0.6.2
 */