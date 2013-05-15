package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum v
{
  private static final Map q;
  private final int r;

  static
  {
    v[] arrayOfv = new v[16];
    arrayOfv[0] = a;
    arrayOfv[1] = b;
    arrayOfv[2] = c;
    arrayOfv[3] = d;
    arrayOfv[4] = e;
    arrayOfv[5] = f;
    arrayOfv[6] = g;
    arrayOfv[7] = h;
    arrayOfv[8] = i;
    arrayOfv[9] = j;
    arrayOfv[10] = k;
    arrayOfv[11] = l;
    arrayOfv[12] = m;
    arrayOfv[13] = n;
    arrayOfv[14] = o;
    arrayOfv[15] = p;
    s = arrayOfv;
    q = new HashMap();
    Iterator localIterator = EnumSet.allOf(v.class).iterator();
    while (localIterator.hasNext())
    {
      v localv = (v)localIterator.next();
      q.put(Integer.valueOf(localv.a()), localv);
    }
  }

  private v(int arg3)
  {
    int i2;
    this.r = i2;
  }

  public static v a(int paramInt)
  {
    return (v)q.get(Integer.valueOf(paramInt));
  }

  public final int a()
  {
    return this.r;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.v
 * JD-Core Version:    0.6.2
 */