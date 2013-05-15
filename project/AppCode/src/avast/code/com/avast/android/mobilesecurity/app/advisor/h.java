package com.avast.android.mobilesecurity.app.advisor;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum h
{
  private static final Map h;
  private int i;
  private String j;

  static
  {
    h[] arrayOfh = new h[7];
    arrayOfh[0] = a;
    arrayOfh[1] = b;
    arrayOfh[2] = c;
    arrayOfh[3] = d;
    arrayOfh[4] = e;
    arrayOfh[5] = f;
    arrayOfh[6] = g;
    k = arrayOfh;
    h = new HashMap();
    Iterator localIterator = EnumSet.allOf(h.class).iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      h.put(Integer.valueOf(localh.a()), localh);
    }
  }

  private h(int arg3, String arg4)
  {
    int m;
    this.i = m;
    Object localObject;
    this.j = localObject;
  }

  public int a()
  {
    return this.i;
  }

  public String b()
  {
    return this.j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.h
 * JD-Core Version:    0.6.2
 */