package com.avast.android.mobilesecurity.engine.internal.vps;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum f
{
  private static final Map f;
  private final short g;

  static
  {
    f[] arrayOff = new f[5];
    arrayOff[0] = a;
    arrayOff[1] = b;
    arrayOff[2] = c;
    arrayOff[3] = d;
    arrayOff[4] = e;
    h = arrayOff;
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(f.class).iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      f.put(Short.valueOf(localf.a()), localf);
    }
  }

  private f(short arg3)
  {
    short s;
    this.g = s;
  }

  public final short a()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.vps.f
 * JD-Core Version:    0.6.2
 */