package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum a
{
  private static final Map e;
  private final short f;

  static
  {
    a[] arrayOfa = new a[4];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    arrayOfa[3] = d;
    g = arrayOfa;
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      e.put(Short.valueOf(locala.f), locala);
    }
  }

  private a(short arg3)
  {
    short s;
    this.f = s;
  }

  public static a a(short paramShort)
  {
    return (a)e.get(Short.valueOf(paramShort));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.a
 * JD-Core Version:    0.6.2
 */