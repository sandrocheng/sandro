package com.b.a;

import java.io.IOException;
import java.io.OutputStream;

public abstract class d
  implements ex
{
  public final void a(OutputStream paramOutputStream)
  {
    n localn = n.a(paramOutputStream, n.a(b()));
    a(localn);
    localn.j();
  }

  public final void b(OutputStream paramOutputStream)
  {
    int i = b();
    n localn = n.a(paramOutputStream, n.a(i + n.r(i)));
    localn.q(i);
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.d
 * JD-Core Version:    0.6.2
 */