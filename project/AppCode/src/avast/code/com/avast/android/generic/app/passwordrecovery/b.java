package com.avast.android.generic.app.passwordrecovery;

import android.util.SparseArray;
import java.util.EnumSet;
import java.util.Iterator;

public enum b
{
  private static final SparseArray h;
  private final int i;

  static
  {
    b[] arrayOfb = new b[7];
    arrayOfb[0] = a;
    arrayOfb[1] = b;
    arrayOfb[2] = c;
    arrayOfb[3] = d;
    arrayOfb[4] = e;
    arrayOfb[5] = f;
    arrayOfb[6] = g;
    j = arrayOfb;
    h = new SparseArray();
    Iterator localIterator = EnumSet.allOf(b.class).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      h.put(localb.a(), localb);
    }
  }

  private b(int arg3)
  {
    int m;
    this.i = m;
  }

  public static b a(int paramInt)
  {
    return (b)h.get(paramInt);
  }

  public final int a()
  {
    return this.i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.passwordrecovery.b
 * JD-Core Version:    0.6.2
 */