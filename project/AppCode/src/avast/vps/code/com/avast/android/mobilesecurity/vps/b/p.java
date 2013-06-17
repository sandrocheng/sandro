package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum p
  implements j
{
  private static final Map b;
  private final short c = 0;

  static
  {
    p[] arrayOfp = new p[1];
    arrayOfp[0] = a;
    d = arrayOfp;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(p.class).iterator();
    while (localIterator.hasNext())
    {
      p localp = (p)localIterator.next();
      b.put(Short.valueOf(localp.c), localp);
    }
  }

  private p()
  {
  }

  public final short a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.p
 * JD-Core Version:    0.6.2
 */