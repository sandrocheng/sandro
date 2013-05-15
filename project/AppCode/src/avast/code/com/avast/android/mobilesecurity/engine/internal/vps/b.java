package com.avast.android.mobilesecurity.engine.internal.vps;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum b
{
  private static final Map g;
  private final short h;

  static
  {
    b[] arrayOfb = new b[6];
    arrayOfb[0] = a;
    arrayOfb[1] = b;
    arrayOfb[2] = c;
    arrayOfb[3] = d;
    arrayOfb[4] = e;
    arrayOfb[5] = f;
    i = arrayOfb;
    g = new HashMap();
    Iterator localIterator = EnumSet.allOf(b.class).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      g.put(Short.valueOf(localb.a()), localb);
    }
  }

  private b(short arg3)
  {
    short s;
    this.h = s;
  }

  public final short a()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.vps.b
 * JD-Core Version:    0.6.2
 */