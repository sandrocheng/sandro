package com.avast.android.mobilesecurity.vps.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum c
{
  private static final Map b;
  private final String c;

  static
  {
    c[] arrayOfc = new c[1];
    arrayOfc[0] = a;
    d = arrayOfc;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(c.class).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      b.put(localc.c, localc);
    }
  }

  private c()
  {
    Object localObject;
    this.c = localObject;
  }

  public static c a(String paramString)
  {
    return (c)b.get(paramString.toLowerCase());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.a.c
 * JD-Core Version:    0.6.2
 */