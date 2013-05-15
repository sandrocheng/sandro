package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ak
{
  private static final Map g;
  private final int h;

  static
  {
    ak[] arrayOfak = new ak[6];
    arrayOfak[0] = a;
    arrayOfak[1] = b;
    arrayOfak[2] = c;
    arrayOfak[3] = d;
    arrayOfak[4] = e;
    arrayOfak[5] = f;
    i = arrayOfak;
    g = new HashMap();
    Iterator localIterator = EnumSet.allOf(ak.class).iterator();
    while (localIterator.hasNext())
    {
      ak localak = (ak)localIterator.next();
      g.put(Integer.valueOf(localak.a()), localak);
    }
  }

  private ak(int arg3)
  {
    int k;
    this.h = k;
  }

  public static ak a(int paramInt)
  {
    return (ak)g.get(Integer.valueOf(paramInt));
  }

  public final int a()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.ak
 * JD-Core Version:    0.6.2
 */