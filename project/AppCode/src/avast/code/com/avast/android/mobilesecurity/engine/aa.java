package com.avast.android.mobilesecurity.engine;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

 enum aa
{
  private static final Map e;
  private final short f;

  static
  {
    aa[] arrayOfaa = new aa[4];
    arrayOfaa[0] = a;
    arrayOfaa[1] = b;
    arrayOfaa[2] = c;
    arrayOfaa[3] = d;
    g = arrayOfaa;
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(aa.class).iterator();
    while (localIterator.hasNext())
    {
      aa localaa = (aa)localIterator.next();
      e.put(Short.valueOf(localaa.a()), localaa);
    }
  }

  private aa(short arg3)
  {
    short s;
    this.f = s;
  }

  public static aa a(short paramShort)
  {
    return (aa)e.get(Short.valueOf(paramShort));
  }

  public final short a()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.aa
 * JD-Core Version:    0.6.2
 */