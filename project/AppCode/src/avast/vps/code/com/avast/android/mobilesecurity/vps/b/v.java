package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum v
  implements j
{
  private static final Map f;
  private final short g;

  static
  {
    v[] arrayOfv = new v[5];
    arrayOfv[0] = a;
    arrayOfv[1] = b;
    arrayOfv[2] = c;
    arrayOfv[3] = d;
    arrayOfv[4] = e;
    h = arrayOfv;
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(v.class).iterator();
    while (localIterator.hasNext())
    {
      v localv = (v)localIterator.next();
      f.put(Short.valueOf(localv.g), localv);
    }
  }

  private v(short arg3)
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
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.v
 * JD-Core Version:    0.6.2
 */