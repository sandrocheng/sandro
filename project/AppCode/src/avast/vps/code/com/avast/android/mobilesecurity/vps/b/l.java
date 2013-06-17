package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum l
  implements j
{
  private static final Map j;
  private final short k;

  static
  {
    l[] arrayOfl = new l[9];
    arrayOfl[0] = a;
    arrayOfl[1] = b;
    arrayOfl[2] = c;
    arrayOfl[3] = d;
    arrayOfl[4] = e;
    arrayOfl[5] = f;
    arrayOfl[6] = g;
    arrayOfl[7] = h;
    arrayOfl[8] = i;
    l = arrayOfl;
    j = new HashMap();
    Iterator localIterator = EnumSet.allOf(l.class).iterator();
    while (localIterator.hasNext())
    {
      l locall = (l)localIterator.next();
      j.put(Short.valueOf(locall.k), locall);
    }
  }

  private l(short arg3)
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
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.l
 * JD-Core Version:    0.6.2
 */