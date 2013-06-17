package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum t
  implements j
{
  private static final Map c;
  private final short d;

  static
  {
    t[] arrayOft = new t[2];
    arrayOft[0] = a;
    arrayOft[1] = b;
    e = arrayOft;
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(t.class).iterator();
    while (localIterator.hasNext())
    {
      t localt = (t)localIterator.next();
      c.put(Short.valueOf(localt.d), localt);
    }
  }

  private t(short arg3)
  {
    short s;
    this.d = s;
  }

  public static t a(short paramShort)
  {
    return (t)c.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.t
 * JD-Core Version:    0.6.2
 */