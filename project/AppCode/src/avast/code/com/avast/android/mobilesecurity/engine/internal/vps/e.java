package com.avast.android.mobilesecurity.engine.internal.vps;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum e
{
  private static final Map b;
  private final short c;

  static
  {
    e[] arrayOfe = new e[1];
    arrayOfe[0] = a;
    d = arrayOfe;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      b.put(Short.valueOf(locale.a()), locale);
    }
  }

  private e(short arg3)
  {
    short s;
    this.c = s;
  }

  public final short a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.vps.e
 * JD-Core Version:    0.6.2
 */