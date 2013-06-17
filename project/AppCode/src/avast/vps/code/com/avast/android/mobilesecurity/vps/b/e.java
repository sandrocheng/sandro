package com.avast.android.mobilesecurity.vps.b;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum e
  implements j
{
  private static final Map d;
  private final short e;

  static
  {
    e[] arrayOfe = new e[3];
    arrayOfe[0] = a;
    arrayOfe[1] = b;
    arrayOfe[2] = c;
    f = arrayOfe;
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      d.put(Short.valueOf(locale.e), locale);
    }
  }

  private e(short arg3)
  {
    short s;
    this.e = s;
  }

  public final short a()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.e
 * JD-Core Version:    0.6.2
 */