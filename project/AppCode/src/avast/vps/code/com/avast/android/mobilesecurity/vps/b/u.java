package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum u
{
  private static final Map m;
  private final int n;

  static
  {
    u[] arrayOfu = new u[12];
    arrayOfu[0] = a;
    arrayOfu[1] = b;
    arrayOfu[2] = c;
    arrayOfu[3] = d;
    arrayOfu[4] = e;
    arrayOfu[5] = f;
    arrayOfu[6] = g;
    arrayOfu[7] = h;
    arrayOfu[8] = i;
    arrayOfu[9] = j;
    arrayOfu[10] = k;
    arrayOfu[11] = l;
    o = arrayOfu;
    m = new HashMap();
    Iterator localIterator = EnumSet.allOf(u.class).iterator();
    while (localIterator.hasNext())
    {
      u localu = (u)localIterator.next();
      m.put(Integer.valueOf(localu.n), localu);
    }
  }

  private u(int arg3)
  {
    int i2;
    this.n = i2;
  }

  public static u a(int paramInt)
  {
    return (u)m.get(Integer.valueOf(paramInt));
  }

  public final int a()
  {
    return this.n;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.u
 * JD-Core Version:    0.6.2
 */