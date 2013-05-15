package com.avast.android.mobilesecurity.engine.internal;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum x
{
  private static final Map n;
  private final String o;

  static
  {
    x[] arrayOfx = new x[13];
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
    arrayOfx[12] = m;
    p = arrayOfx;
    n = new HashMap();
    Iterator localIterator = EnumSet.allOf(x.class).iterator();
    while (localIterator.hasNext())
    {
      x localx = (x)localIterator.next();
      n.put(localx.a(), localx);
    }
  }

  private x(String arg3)
  {
    Object localObject;
    this.o = localObject;
  }

  public final String a()
  {
    return this.o;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.x
 * JD-Core Version:    0.6.2
 */