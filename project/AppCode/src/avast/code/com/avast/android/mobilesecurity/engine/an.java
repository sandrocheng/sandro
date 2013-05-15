package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

 enum an
{
  private static final Map i;
  private final short j;

  static
  {
    an[] arrayOfan = new an[8];
    arrayOfan[0] = a;
    arrayOfan[1] = b;
    arrayOfan[2] = c;
    arrayOfan[3] = d;
    arrayOfan[4] = e;
    arrayOfan[5] = f;
    arrayOfan[6] = g;
    arrayOfan[7] = h;
    k = arrayOfan;
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(an.class).iterator();
    while (localIterator.hasNext())
    {
      an localan = (an)localIterator.next();
      i.put(Short.valueOf(localan.a()), localan);
    }
  }

  private an(short arg3)
  {
    short s;
    this.j = s;
  }

  public static an a(short paramShort)
  {
    return (an)i.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.an
 * JD-Core Version:    0.6.2
 */