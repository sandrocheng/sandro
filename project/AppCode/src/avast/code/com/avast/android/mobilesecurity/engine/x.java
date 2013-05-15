package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum x
{
  private static final Map m;
  private final int n;

  static
  {
    x[] arrayOfx = new x[12];
    arrayOfx[0] = a;
    arrayOfx[1] = b;
    arrayOfx[2] = c;
    arrayOfx[3] = d;
    arrayOfx[4] = e;
    arrayOfx[5] = f;
    arrayOfx[6] = g;
    arrayOfx[7] = h;
    arrayOfx[8] = i;
    arrayOfx[9] = j;
    arrayOfx[10] = k;
    arrayOfx[11] = l;
    o = arrayOfx;
    m = new HashMap();
    Iterator localIterator = EnumSet.allOf(x.class).iterator();
    while (localIterator.hasNext())
    {
      x localx = (x)localIterator.next();
      m.put(Integer.valueOf(localx.a()), localx);
    }
  }

  private x(int arg3)
  {
    int i2;
    this.n = i2;
  }

  public static x a(int paramInt)
  {
    return (x)m.get(Integer.valueOf(paramInt));
  }

  public final int a()
  {
    return this.n;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.x
 * JD-Core Version:    0.6.2
 */