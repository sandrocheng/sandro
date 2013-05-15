package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum d
{
  private static final Map e;
  private final short f;

  static
  {
    d[] arrayOfd = new d[4];
    arrayOfd[0] = a;
    arrayOfd[1] = b;
    arrayOfd[2] = c;
    arrayOfd[3] = d;
    g = arrayOfd;
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(d.class).iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      e.put(Short.valueOf(locald.a()), locald);
    }
  }

  private d(short arg3)
  {
    short s;
    this.f = s;
  }

  public final short a()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.d
 * JD-Core Version:    0.6.2
 */