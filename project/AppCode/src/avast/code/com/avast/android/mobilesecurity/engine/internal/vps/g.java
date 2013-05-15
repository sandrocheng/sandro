package com.avast.android.mobilesecurity.engine.internal.vps;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum g
{
  private static final Map j;
  private final short k;

  static
  {
    g[] arrayOfg = new g[9];
    arrayOfg[0] = a;
    arrayOfg[1] = b;
    arrayOfg[2] = c;
    arrayOfg[3] = d;
    arrayOfg[4] = e;
    arrayOfg[5] = f;
    arrayOfg[6] = g;
    arrayOfg[7] = h;
    arrayOfg[8] = i;
    l = arrayOfg;
    j = new HashMap();
    Iterator localIterator = EnumSet.allOf(g.class).iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      j.put(Short.valueOf(localg.a()), localg);
    }
  }

  private g(short arg3)
  {
    short s;
    this.k = s;
  }

  public final short a()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.vps.g
 * JD-Core Version:    0.6.2
 */