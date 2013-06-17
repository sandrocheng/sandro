package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum w
{
  private static final Map g;
  private final int h;

  static
  {
    w[] arrayOfw = new w[6];
    arrayOfw[0] = a;
    arrayOfw[1] = b;
    arrayOfw[2] = c;
    arrayOfw[3] = d;
    arrayOfw[4] = e;
    arrayOfw[5] = f;
    i = arrayOfw;
    g = new HashMap();
    Iterator localIterator = EnumSet.allOf(w.class).iterator();
    while (localIterator.hasNext())
    {
      w localw = (w)localIterator.next();
      g.put(Integer.valueOf(localw.h), localw);
    }
  }

  private w(int arg3)
  {
    int k;
    this.h = k;
  }

  public final int a()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.w
 * JD-Core Version:    0.6.2
 */