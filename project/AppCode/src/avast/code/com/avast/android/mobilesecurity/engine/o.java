package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum o
{
  private static final Map l;
  private final int m;

  static
  {
    o[] arrayOfo = new o[11];
    arrayOfo[0] = a;
    arrayOfo[1] = b;
    arrayOfo[2] = c;
    arrayOfo[3] = d;
    arrayOfo[4] = e;
    arrayOfo[5] = f;
    arrayOfo[6] = g;
    arrayOfo[7] = h;
    arrayOfo[8] = i;
    arrayOfo[9] = j;
    arrayOfo[10] = k;
    n = arrayOfo;
    l = new HashMap();
    Iterator localIterator = EnumSet.allOf(o.class).iterator();
    while (localIterator.hasNext())
    {
      o localo = (o)localIterator.next();
      l.put(Integer.valueOf(localo.a()), localo);
    }
  }

  private o(int arg3)
  {
    int i2;
    this.m = i2;
  }

  public static o a(int paramInt)
  {
    return (o)l.get(Integer.valueOf(paramInt));
  }

  public final int a()
  {
    return this.m;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.o
 * JD-Core Version:    0.6.2
 */