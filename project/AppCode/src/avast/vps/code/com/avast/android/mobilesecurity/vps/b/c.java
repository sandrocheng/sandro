package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum c
  implements j
{
  private static final Map g;
  private final short h;

  static
  {
    c[] arrayOfc = new c[6];
    arrayOfc[0] = a;
    arrayOfc[1] = b;
    arrayOfc[2] = c;
    arrayOfc[3] = d;
    arrayOfc[4] = e;
    arrayOfc[5] = f;
    i = arrayOfc;
    g = new HashMap();
    Iterator localIterator = EnumSet.allOf(c.class).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      g.put(Short.valueOf(localc.h), localc);
    }
  }

  private c(short arg3)
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
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.c
 * JD-Core Version:    0.6.2
 */