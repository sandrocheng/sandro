package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum k
  implements j
{
  private static final Map f;
  private final short g;

  static
  {
    k[] arrayOfk = new k[5];
    arrayOfk[0] = a;
    arrayOfk[1] = b;
    arrayOfk[2] = c;
    arrayOfk[3] = d;
    arrayOfk[4] = e;
    h = arrayOfk;
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(k.class).iterator();
    while (localIterator.hasNext())
    {
      k localk = (k)localIterator.next();
      f.put(Short.valueOf(localk.g), localk);
    }
  }

  private k(short arg3)
  {
    short s;
    this.g = s;
  }

  public final short a()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.k
 * JD-Core Version:    0.6.2
 */