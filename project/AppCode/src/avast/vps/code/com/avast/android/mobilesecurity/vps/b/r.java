package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum r
  implements j
{
  private static final Map c;
  private final short d;

  static
  {
    r[] arrayOfr = new r[2];
    arrayOfr[0] = a;
    arrayOfr[1] = b;
    e = arrayOfr;
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(r.class).iterator();
    while (localIterator.hasNext())
    {
      r localr = (r)localIterator.next();
      c.put(Short.valueOf(localr.d), localr);
    }
  }

  private r(short arg3)
  {
    short s;
    this.d = s;
  }

  public final short a()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.r
 * JD-Core Version:    0.6.2
 */