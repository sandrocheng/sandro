package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum p
{
  private static final Map f;
  private final short g;

  static
  {
    p[] arrayOfp = new p[5];
    arrayOfp[0] = a;
    arrayOfp[1] = b;
    arrayOfp[2] = c;
    arrayOfp[3] = d;
    arrayOfp[4] = e;
    h = arrayOfp;
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(p.class).iterator();
    while (localIterator.hasNext())
    {
      p localp = (p)localIterator.next();
      f.put(Short.valueOf(localp.a()), localp);
    }
  }

  private p(short arg3)
  {
    short s;
    this.g = s;
  }

  public static p a(short paramShort)
  {
    return (p)f.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.p
 * JD-Core Version:    0.6.2
 */