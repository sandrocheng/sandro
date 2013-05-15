package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum c
{
  private static final Map d;
  private final short e;

  static
  {
    c[] arrayOfc = new c[3];
    arrayOfc[0] = a;
    arrayOfc[1] = b;
    arrayOfc[2] = c;
    f = arrayOfc;
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(c.class).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      d.put(Short.valueOf(localc.a()), localc);
    }
  }

  private c(short arg3)
  {
    short s;
    this.e = s;
  }

  public static c a(short paramShort)
  {
    return (c)d.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.c
 * JD-Core Version:    0.6.2
 */