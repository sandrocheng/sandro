package com.avast.android.mobilesecurity.engine.internal.vps;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum h
{
  private static final Map e;
  private final short f;

  static
  {
    h[] arrayOfh = new h[4];
    arrayOfh[0] = a;
    arrayOfh[1] = b;
    arrayOfh[2] = c;
    arrayOfh[3] = d;
    g = arrayOfh;
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(h.class).iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      e.put(Short.valueOf(localh.a()), localh);
    }
  }

  private h(short arg3)
  {
    short s;
    this.f = s;
  }

  public final short a()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.vps.h
 * JD-Core Version:    0.6.2
 */