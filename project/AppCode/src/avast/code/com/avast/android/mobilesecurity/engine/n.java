package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

 enum n
{
  private static final Map c;
  private final short d;

  static
  {
    n[] arrayOfn = new n[2];
    arrayOfn[0] = a;
    arrayOfn[1] = b;
    e = arrayOfn;
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(n.class).iterator();
    while (localIterator.hasNext())
    {
      n localn = (n)localIterator.next();
      c.put(Short.valueOf(localn.a()), localn);
    }
  }

  private n(short arg3)
  {
    short s;
    this.d = s;
  }

  public static n a(short paramShort)
  {
    return (n)c.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.n
 * JD-Core Version:    0.6.2
 */