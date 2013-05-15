package com.google.a;

import java.io.IOException;
import java.io.InputStream;

public abstract class b
  implements ab
{
  protected static al a(aa paramaa)
  {
    return new al(paramaa);
  }

  public b a(d paramd)
  {
    return b(paramd, g.a());
  }

  public b a(InputStream paramInputStream)
  {
    d locald = d.a(paramInputStream);
    a(locald);
    locald.a(0);
    return this;
  }

  public b a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public b a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      d locald = d.a(paramArrayOfByte, paramInt1, paramInt2);
      a(locald);
      locald.a(0);
      return this;
    }
    catch (x localx)
    {
      throw localx;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", localIOException);
    }
  }

  public abstract b b(d paramd, g paramg);

  public abstract b i();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.b
 * JD-Core Version:    0.6.2
 */