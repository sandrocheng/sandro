package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum q
{
  private static final Map i;
  private final short j;

  static
  {
    q[] arrayOfq = new q[8];
    arrayOfq[0] = a;
    arrayOfq[1] = b;
    arrayOfq[2] = c;
    arrayOfq[3] = d;
    arrayOfq[4] = e;
    arrayOfq[5] = f;
    arrayOfq[6] = g;
    arrayOfq[7] = h;
    k = arrayOfq;
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(q.class).iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      i.put(Short.valueOf(localq.a()), localq);
    }
  }

  private q(short arg3)
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
 * Qualified Name:     com.avast.android.mobilesecurity.engine.q
 * JD-Core Version:    0.6.2
 */