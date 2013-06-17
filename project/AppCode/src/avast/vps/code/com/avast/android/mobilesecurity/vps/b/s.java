package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum s
{
  private static final Map l;
  private final int m;

  static
  {
    s[] arrayOfs = new s[11];
    arrayOfs[0] = a;
    arrayOfs[1] = b;
    arrayOfs[2] = c;
    arrayOfs[3] = d;
    arrayOfs[4] = e;
    arrayOfs[5] = f;
    arrayOfs[6] = g;
    arrayOfs[7] = h;
    arrayOfs[8] = i;
    arrayOfs[9] = j;
    arrayOfs[10] = k;
    n = arrayOfs;
    l = new HashMap();
    Iterator localIterator = EnumSet.allOf(s.class).iterator();
    while (localIterator.hasNext())
    {
      s locals = (s)localIterator.next();
      l.put(Integer.valueOf(locals.m), locals);
    }
  }

  private s(int arg3)
  {
    int i2;
    this.m = i2;
  }

  public final int a()
  {
    return this.m;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.s
 * JD-Core Version:    0.6.2
 */