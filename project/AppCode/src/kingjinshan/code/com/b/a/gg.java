package com.b.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class gg
  implements ex
{
  private static final gg a = new gg(Collections.emptyMap(), (byte)0);
  private Map b;

  private gg()
  {
  }

  private gg(Map paramMap, byte paramByte)
  {
    this.b = paramMap;
  }

  private static gg a(i parami)
  {
    return gi.c().a(parami).b();
  }

  private static gg a(m paramm)
  {
    return gi.c().a(paramm).b();
  }

  private static gg a(InputStream paramInputStream)
  {
    return gi.c().a(paramInputStream).b();
  }

  private static gg a(byte[] paramArrayOfByte)
  {
    return gi.c().a(paramArrayOfByte).b();
  }

  public static gi a(gg paramgg)
  {
    return gi.c().a(paramgg);
  }

  private boolean a(int paramInt)
  {
    return this.b.containsKey(Integer.valueOf(paramInt));
  }

  private gj b(int paramInt)
  {
    gj localgj1 = (gj)this.b.get(Integer.valueOf(paramInt));
    if (localgj1 == null);
    for (gj localgj2 = gj.b(); ; localgj2 = localgj1)
      return localgj2;
  }

  public static gi e()
  {
    return gi.c();
  }

  public static gg f()
  {
    return a;
  }

  private static gg i()
  {
    return a;
  }

  private static gi j()
  {
    return gi.c();
  }

  private gi k()
  {
    return gi.c().a(this);
  }

  public final void a(n paramn)
  {
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ((gj)localEntry.getValue()).a(((Integer)localEntry.getKey()).intValue(), paramn);
    }
  }

  public final void a(OutputStream paramOutputStream)
  {
    n localn = n.a(paramOutputStream);
    a(localn);
    localn.j();
  }

  public final boolean a()
  {
    return true;
  }

  public final int b()
  {
    Iterator localIterator = this.b.entrySet().iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      i += ((gj)localEntry.getValue()).a(((Integer)localEntry.getKey()).intValue());
    }
    return i;
  }

  public final void b(n paramn)
  {
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ((gj)localEntry.getValue()).b(((Integer)localEntry.getKey()).intValue(), paramn);
    }
  }

  public final void b(OutputStream paramOutputStream)
  {
    n localn = n.a(paramOutputStream);
    localn.q(b());
    a(localn);
    localn.j();
  }

  public final i c()
  {
    try
    {
      k localk = i.b(b());
      a(localk.b());
      i locali = localk.a();
      return locali;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", localIOException);
    }
  }

  public final byte[] d()
  {
    try
    {
      byte[] arrayOfByte = new byte[b()];
      n localn = n.a(arrayOfByte);
      a(localn);
      localn.k();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", localIOException);
    }
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (this == paramObject)
      bool = true;
    while (true)
    {
      return bool;
      if (((paramObject instanceof gg)) && (this.b.equals(((gg)paramObject).b)))
        bool = true;
      else
        bool = false;
    }
  }

  public final Map g()
  {
    return this.b;
  }

  public final int h()
  {
    Iterator localIterator = this.b.entrySet().iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      i += ((gj)localEntry.getValue()).b(((Integer)localEntry.getKey()).intValue());
    }
    return i;
  }

  public final int hashCode()
  {
    return this.b.hashCode();
  }

  public final String toString()
  {
    return fy.a(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gg
 * JD-Core Version:    0.6.2
 */