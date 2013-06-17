package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum f
  implements j
{
  private static final Map b;
  private final short c = 0;

  static
  {
    f[] arrayOff = new f[1];
    arrayOff[0] = a;
    d = arrayOff;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(f.class).iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      b.put(Short.valueOf(localf.c), localf);
    }
  }

  private f()
  {
  }

  public final short a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.f
 * JD-Core Version:    0.6.2
 */