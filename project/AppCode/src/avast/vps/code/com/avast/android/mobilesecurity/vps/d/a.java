package com.avast.android.mobilesecurity.vps.d;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum a
{
  private static final Map d;
  private final int e;

  static
  {
    a[] arrayOfa = new a[3];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    f = arrayOfa;
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      d.put(Integer.valueOf(locala.e), locala);
    }
  }

  private a(int arg3)
  {
    int j;
    this.e = j;
  }

  public static a a(int paramInt)
  {
    if (paramInt < 0)
      paramInt = -42;
    return (a)d.get(Integer.valueOf(paramInt));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.d.a
 * JD-Core Version:    0.6.2
 */