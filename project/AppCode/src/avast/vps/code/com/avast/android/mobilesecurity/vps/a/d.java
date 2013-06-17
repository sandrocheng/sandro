package com.avast.android.mobilesecurity.vps.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum d
{
  private static final Map b;
  private final String c;

  static
  {
    d[] arrayOfd = new d[1];
    arrayOfd[0] = a;
    d = arrayOfd;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(d.class).iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      b.put(locald.c, locald);
    }
  }

  private d()
  {
    Object localObject;
    this.c = localObject;
  }

  public static d a(String paramString)
  {
    return (d)b.get(paramString.toLowerCase());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.a.d
 * JD-Core Version:    0.6.2
 */