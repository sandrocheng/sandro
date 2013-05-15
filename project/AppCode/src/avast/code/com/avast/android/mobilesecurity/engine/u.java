package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum u
{
  private static final Map e;
  private final int f;

  static
  {
    u[] arrayOfu = new u[4];
    arrayOfu[0] = a;
    arrayOfu[1] = b;
    arrayOfu[2] = c;
    arrayOfu[3] = d;
    g = arrayOfu;
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(u.class).iterator();
    while (localIterator.hasNext())
    {
      u localu = (u)localIterator.next();
      e.put(Integer.valueOf(localu.a()), localu);
    }
  }

  private u(int arg3)
  {
    int j;
    this.f = j;
  }

  public static u a(int paramInt)
  {
    return (u)e.get(Integer.valueOf(paramInt));
  }

  public final int a()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.u
 * JD-Core Version:    0.6.2
 */