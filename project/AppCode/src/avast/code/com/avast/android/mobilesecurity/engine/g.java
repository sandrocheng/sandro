package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

 enum g
{
  private static final Map b;
  private final short c;

  static
  {
    g[] arrayOfg = new g[1];
    arrayOfg[0] = a;
    d = arrayOfg;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(g.class).iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      b.put(Short.valueOf(localg.a()), localg);
    }
  }

  private g(short arg3)
  {
    short s;
    this.c = s;
  }

  public static g a(short paramShort)
  {
    return (g)b.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.g
 * JD-Core Version:    0.6.2
 */