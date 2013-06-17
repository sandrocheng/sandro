package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum x
  implements j
{
  private static final Map i;
  private final short j;

  static
  {
    x[] arrayOfx = new x[8];
    arrayOfx[0] = a;
    arrayOfx[1] = b;
    arrayOfx[2] = c;
    arrayOfx[3] = d;
    arrayOfx[4] = e;
    arrayOfx[5] = f;
    arrayOfx[6] = g;
    arrayOfx[7] = h;
    k = arrayOfx;
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(x.class).iterator();
    while (localIterator.hasNext())
    {
      x localx = (x)localIterator.next();
      i.put(Short.valueOf(localx.j), localx);
    }
  }

  private x(short arg3)
  {
    short s;
    this.j = s;
  }

  public final short a()
  {
    return this.j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.x
 * JD-Core Version:    0.6.2
 */