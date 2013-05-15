package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

 enum aj
{
  private static final Map f;
  private final short g;

  static
  {
    aj[] arrayOfaj = new aj[5];
    arrayOfaj[0] = a;
    arrayOfaj[1] = b;
    arrayOfaj[2] = c;
    arrayOfaj[3] = d;
    arrayOfaj[4] = e;
    h = arrayOfaj;
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(aj.class).iterator();
    while (localIterator.hasNext())
    {
      aj localaj = (aj)localIterator.next();
      f.put(Short.valueOf(localaj.a()), localaj);
    }
  }

  private aj(short arg3)
  {
    short s;
    this.g = s;
  }

  public static aj a(short paramShort)
  {
    return (aj)f.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.aj
 * JD-Core Version:    0.6.2
 */