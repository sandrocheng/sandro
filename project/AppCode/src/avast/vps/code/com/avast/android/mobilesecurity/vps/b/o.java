package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum o
  implements j
{
  private static final Map d;
  private final short e;

  static
  {
    o[] arrayOfo = new o[3];
    arrayOfo[0] = a;
    arrayOfo[1] = b;
    arrayOfo[2] = c;
    f = arrayOfo;
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(o.class).iterator();
    while (localIterator.hasNext())
    {
      o localo = (o)localIterator.next();
      d.put(Short.valueOf(localo.e), localo);
    }
  }

  private o(short arg3)
  {
    short s;
    this.e = s;
  }

  public final short a()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.o
 * JD-Core Version:    0.6.2
 */