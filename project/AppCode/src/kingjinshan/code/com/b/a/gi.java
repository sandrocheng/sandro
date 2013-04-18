package com.b.a;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class gi
  implements ey
{
  private Map a;
  private int b;
  private gk c;

  private gi a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      m localm = m.a(paramArrayOfByte, paramInt1, paramInt2);
      a(localm);
      localm.a(0);
      return this;
    }
    catch (es locales)
    {
      throw locales;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", localIOException);
    }
  }

  private gk a(int paramInt)
  {
    gk localgk;
    if (this.c != null)
      if (paramInt == this.b)
        localgk = this.c;
    while (true)
    {
      return localgk;
      b(this.b, this.c.a());
      if (paramInt == 0)
      {
        localgk = null;
      }
      else
      {
        gj localgj = (gj)this.a.get(Integer.valueOf(paramInt));
        this.b = paramInt;
        this.c = gj.a();
        if (localgj != null)
          this.c.a(localgj);
        localgk = this.c;
      }
    }
  }

  private gi b(int paramInt, gj paramgj)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("Zero is not a valid field number.");
    if ((this.c != null) && (this.b == paramInt))
    {
      this.c = null;
      this.b = 0;
    }
    if (this.a.isEmpty())
      this.a = new TreeMap();
    this.a.put(Integer.valueOf(paramInt), paramgj);
    return this;
  }

  private gi b(i parami)
  {
    return a(parami);
  }

  private gi b(m paramm)
  {
    return a(paramm);
  }

  private gi b(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte);
  }

  private boolean b(int paramInt)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("Zero is not a valid field number.");
    if ((paramInt == this.b) || (this.a.containsKey(Integer.valueOf(paramInt))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private gi c(InputStream paramInputStream)
  {
    return a(paramInputStream);
  }

  private gi c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return a(paramArrayOfByte, paramInt1, paramInt2);
  }

  private static gi d()
  {
    gi localgi = new gi();
    localgi.j();
    return localgi;
  }

  private gg g()
  {
    return b();
  }

  private gi h()
  {
    a(0);
    return gg.e().a(new gg(this.a));
  }

  private static gg i()
  {
    return gg.f();
  }

  private void j()
  {
    this.a = Collections.emptyMap();
    this.b = 0;
    this.c = null;
  }

  private gi k()
  {
    j();
    return this;
  }

  private Map l()
  {
    a(0);
    return Collections.unmodifiableMap(this.a);
  }

  public final gi a(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0)
      throw new IllegalArgumentException("Zero is not a valid field number.");
    a(paramInt1).a(paramInt2);
    return this;
  }

  public final gi a(int paramInt, gj paramgj)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("Zero is not a valid field number.");
    if (paramInt == 0)
      throw new IllegalArgumentException("Zero is not a valid field number.");
    int i;
    if ((paramInt == this.b) || (this.a.containsKey(Integer.valueOf(paramInt))))
    {
      i = 1;
      if (i == 0)
        break label75;
      a(paramInt).a(paramgj);
    }
    while (true)
    {
      return this;
      i = 0;
      break;
      label75: b(paramInt, paramgj);
    }
  }

  public final gi a(gg paramgg)
  {
    if (paramgg != gg.f())
    {
      Iterator localIterator = gg.b(paramgg).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        a(((Integer)localEntry.getKey()).intValue(), (gj)localEntry.getValue());
      }
    }
    return this;
  }

  public final gi a(i parami)
  {
    try
    {
      m localm = parami.d();
      a(localm);
      localm.a(0);
      return this;
    }
    catch (es locales)
    {
      throw locales;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", localIOException);
    }
  }

  public final gi a(m paramm)
  {
    int i;
    do
      i = paramm.a();
    while ((i != 0) && (a(i, paramm)));
    return this;
  }

  public final gi a(InputStream paramInputStream)
  {
    m localm = m.a(paramInputStream);
    a(localm);
    localm.a(0);
    return this;
  }

  public final gi a(byte[] paramArrayOfByte)
  {
    try
    {
      m localm = m.a(paramArrayOfByte, 0, paramArrayOfByte.length);
      a(localm);
      localm.a(0);
      return this;
    }
    catch (es locales)
    {
      throw locales;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", localIOException);
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(int paramInt, m paramm)
  {
    int i = go.b(paramInt);
    boolean bool;
    switch (go.a(paramInt))
    {
    default:
      throw es.f();
    case 0:
      a(i).a(paramm.e());
      bool = true;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return bool;
      a(i).b(paramm.g());
      bool = true;
      continue;
      a(i).a(paramm.k());
      bool = true;
      continue;
      gi localgi = gg.e();
      paramm.a(i, localgi, db.a());
      a(i).a(localgi.b());
      bool = true;
      continue;
      bool = false;
      continue;
      a(i).a(paramm.h());
      bool = true;
    }
  }

  public final gg b()
  {
    a(0);
    if (this.a.isEmpty());
    for (gg localgg = gg.f(); ; localgg = new gg(Collections.unmodifiableMap(this.a)))
    {
      this.a = null;
      return localgg;
    }
  }

  public final boolean b(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    if (i == -1);
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      a(new f(paramInputStream, m.a(i, paramInputStream)));
    }
  }

  public final boolean b(InputStream paramInputStream, df paramdf)
  {
    return b(paramInputStream);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gi
 * JD-Core Version:    0.6.2
 */