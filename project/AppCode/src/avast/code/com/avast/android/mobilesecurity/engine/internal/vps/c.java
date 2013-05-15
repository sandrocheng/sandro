package com.avast.android.mobilesecurity.engine.internal.vps;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum c
{
  private static final Map e;
  private final short f;

  static
  {
    c[] arrayOfc = new c[4];
    arrayOfc[0] = a;
    arrayOfc[1] = b;
    arrayOfc[2] = c;
    arrayOfc[3] = d;
    g = arrayOfc;
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(c.class).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      e.put(Short.valueOf(localc.a()), localc);
    }
  }

  private c(short arg3)
  {
    short s;
    this.f = s;
  }

  public static c a(short paramShort)
  {
    return (c)e.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.vps.c
 * JD-Core Version:    0.6.2
 */