package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum i
  implements j
{
  private static final Map i;
  private final short j;

  static
  {
    i[] arrayOfi = new i[8];
    arrayOfi[0] = a;
    arrayOfi[1] = b;
    arrayOfi[2] = c;
    arrayOfi[3] = d;
    arrayOfi[4] = e;
    arrayOfi[5] = f;
    arrayOfi[6] = g;
    arrayOfi[7] = h;
    k = arrayOfi;
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(i.class).iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      i.put(Short.valueOf(locali.j), locali);
    }
  }

  private i(short arg3)
  {
    short s;
    this.j = s;
  }

  public static i a(short paramShort)
  {
    return (i)i.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.i
 * JD-Core Version:    0.6.2
 */