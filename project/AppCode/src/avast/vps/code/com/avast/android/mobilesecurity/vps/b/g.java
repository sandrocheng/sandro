package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum g
  implements j
{
  private static final Map e;
  private final short f;

  static
  {
    g[] arrayOfg = new g[4];
    arrayOfg[0] = a;
    arrayOfg[1] = b;
    arrayOfg[2] = c;
    arrayOfg[3] = d;
    g = arrayOfg;
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(g.class).iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      e.put(Short.valueOf(localg.f), localg);
    }
  }

  private g(short arg3)
  {
    short s;
    this.f = s;
  }

  public static g a(short paramShort)
  {
    return (g)e.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.g
 * JD-Core Version:    0.6.2
 */