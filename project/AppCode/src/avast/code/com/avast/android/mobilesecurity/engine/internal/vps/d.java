package com.avast.android.mobilesecurity.engine.internal.vps;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum d
{
  private static final Map d;
  private final short e;

  static
  {
    d[] arrayOfd = new d[3];
    arrayOfd[0] = a;
    arrayOfd[1] = b;
    arrayOfd[2] = c;
    f = arrayOfd;
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(d.class).iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      d.put(Short.valueOf(locald.a()), locald);
    }
  }

  private d(short arg3)
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
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.vps.d
 * JD-Core Version:    0.6.2
 */