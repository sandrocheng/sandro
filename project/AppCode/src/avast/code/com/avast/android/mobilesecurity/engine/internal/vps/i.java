package com.avast.android.mobilesecurity.engine.internal.vps;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum i
{
  private static final Map b;
  private final short c;

  static
  {
    i[] arrayOfi = new i[1];
    arrayOfi[0] = a;
    d = arrayOfi;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(i.class).iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      b.put(Short.valueOf(locali.a()), locali);
    }
  }

  private i(short arg3)
  {
    short s;
    this.c = s;
  }

  public final short a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.vps.i
 * JD-Core Version:    0.6.2
 */