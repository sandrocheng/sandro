package com.b.a;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;

public abstract class e
  implements ey
{
  protected static void a(Iterable paramIterable, Collection paramCollection)
  {
    Iterator localIterator1 = paramIterable.iterator();
    while (localIterator1.hasNext())
      if (localIterator1.next() == null)
        throw new NullPointerException();
    if ((paramIterable instanceof Collection))
      paramCollection.addAll((Collection)paramIterable);
    while (true)
    {
      return;
      Iterator localIterator2 = paramIterable.iterator();
      while (localIterator2.hasNext())
        paramCollection.add(localIterator2.next());
    }
  }

  private static gf b()
  {
    return new gf();
  }

  public e a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      m localm = m.a(paramArrayOfByte, paramInt1, paramInt2);
      b(localm);
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

  public e a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, df paramdf)
  {
    try
    {
      m localm = m.a(paramArrayOfByte, paramInt1, paramInt2);
      b(localm, paramdf);
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

  public e b(i parami)
  {
    try
    {
      m localm = parami.d();
      b(localm);
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

  public e b(i parami, df paramdf)
  {
    try
    {
      m localm = parami.d();
      b(localm, paramdf);
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

  public e b(m paramm)
  {
    return b(paramm, df.c());
  }

  public abstract e b(m paramm, df paramdf);

  public e b(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public e b(byte[] paramArrayOfByte, df paramdf)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length, paramdf);
  }

  public boolean b(InputStream paramInputStream)
  {
    return b(paramInputStream, df.c());
  }

  public boolean b(InputStream paramInputStream, df paramdf)
  {
    int i = paramInputStream.read();
    if (i == -1);
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      c(new f(paramInputStream, m.a(i, paramInputStream)), paramdf);
    }
  }

  public e c(InputStream paramInputStream)
  {
    m localm = m.a(paramInputStream);
    b(localm);
    localm.a(0);
    return this;
  }

  public e c(InputStream paramInputStream, df paramdf)
  {
    m localm = m.a(paramInputStream);
    b(localm, paramdf);
    localm.a(0);
    return this;
  }

  public abstract e d();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.e
 * JD-Core Version:    0.6.2
 */