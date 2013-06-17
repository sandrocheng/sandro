package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum m
  implements j
{
  private static final Map b;
  private final short c = 0;

  static
  {
    m[] arrayOfm = new m[1];
    arrayOfm[0] = a;
    d = arrayOfm;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(m.class).iterator();
    while (localIterator.hasNext())
    {
      m localm = (m)localIterator.next();
      b.put(Short.valueOf(localm.c), localm);
    }
  }

  private m()
  {
  }

  public final short a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.m
 * JD-Core Version:    0.6.2
 */