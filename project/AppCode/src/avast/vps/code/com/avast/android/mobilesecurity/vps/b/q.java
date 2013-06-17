package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum q
  implements j
{
  private static final Map b;
  private final short c = 0;

  static
  {
    q[] arrayOfq = new q[1];
    arrayOfq[0] = a;
    d = arrayOfq;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(q.class).iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      b.put(Short.valueOf(localq.c), localq);
    }
  }

  private q()
  {
  }

  public final short a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.q
 * JD-Core Version:    0.6.2
 */