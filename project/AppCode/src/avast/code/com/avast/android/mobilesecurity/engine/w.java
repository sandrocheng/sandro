package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

 enum w
{
  private static final Map c;
  private final short d;

  static
  {
    w[] arrayOfw = new w[2];
    arrayOfw[0] = a;
    arrayOfw[1] = b;
    e = arrayOfw;
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(w.class).iterator();
    while (localIterator.hasNext())
    {
      w localw = (w)localIterator.next();
      c.put(Short.valueOf(localw.a()), localw);
    }
  }

  private w(short arg3)
  {
    short s;
    this.d = s;
  }

  public static w a(short paramShort)
  {
    return (w)c.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.w
 * JD-Core Version:    0.6.2
 */