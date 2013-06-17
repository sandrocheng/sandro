package com.avast.android.mobilesecurity.vps.d;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum b
{
  private static final Map e;
  private final int f;

  static
  {
    b[] arrayOfb = new b[4];
    arrayOfb[0] = a;
    arrayOfb[1] = b;
    arrayOfb[2] = c;
    arrayOfb[3] = d;
    g = arrayOfb;
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(b.class).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      e.put(Integer.valueOf(localb.f), localb);
    }
  }

  private b(int arg3)
  {
    int j;
    this.f = j;
  }

  public static b a(int paramInt)
  {
    return (b)e.get(Integer.valueOf(paramInt));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.d.b
 * JD-Core Version:    0.6.2
 */