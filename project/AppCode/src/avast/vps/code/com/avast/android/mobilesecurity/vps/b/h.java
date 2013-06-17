package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum h
  implements j
{
  private static final Map f;
  private final short g;

  static
  {
    h[] arrayOfh = new h[5];
    arrayOfh[0] = a;
    arrayOfh[1] = b;
    arrayOfh[2] = c;
    arrayOfh[3] = d;
    arrayOfh[4] = e;
    h = arrayOfh;
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(h.class).iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      f.put(Short.valueOf(localh.g), localh);
    }
  }

  private h(short arg3)
  {
    short s;
    this.g = s;
  }

  public static h a(short paramShort)
  {
    return (h)f.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.h
 * JD-Core Version:    0.6.2
 */