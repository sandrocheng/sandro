package com.hoi.a;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class f extends FilterOutputStream
{
  private static byte[] e = new byte[0];
  private final b a;
  private final int b;
  private byte[] c = null;
  private int d = 0;

  public f(OutputStream paramOutputStream, int paramInt)
  {
    this(paramOutputStream, paramInt, true);
  }

  public f(OutputStream paramOutputStream, int paramInt, boolean paramBoolean)
  {
    super(paramOutputStream);
    this.b = paramInt;
    if (paramBoolean);
    for (this.a = new d(paramInt, null); ; this.a = new c(paramInt, null))
      return;
  }

  private void a()
  {
    if (this.d > 0)
    {
      a(this.c, 0, this.d, false);
      this.d = 0;
    }
  }

  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    b localb = this.a;
    byte[] arrayOfByte = this.a.a;
    int i = this.a.a(paramInt2);
    if ((arrayOfByte == null) || (arrayOfByte.length < i))
      arrayOfByte = new byte[i];
    localb.a = arrayOfByte;
    if (!this.a.a(paramArrayOfByte, paramInt1, paramInt2, paramBoolean))
      throw new IOException("bad base-64");
    this.out.write(this.a.a, 0, this.a.b);
  }

  private static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < paramInt));
    for (byte[] arrayOfByte = new byte[paramInt]; ; arrayOfByte = paramArrayOfByte)
      return arrayOfByte;
  }

  public final void close()
  {
    Object localObject = null;
    try
    {
      a();
      a(e, 0, 0, true);
      try
      {
        label16: if ((0x10 & this.b) == 0)
          this.out.close();
        while (localObject != null)
        {
          throw localObject;
          this.out.flush();
        }
      }
      catch (IOException localIOException2)
      {
        while (true)
          if (localObject != null)
            localObject = localIOException2;
      }
      return;
    }
    catch (IOException localIOException1)
    {
      break label16;
    }
  }

  public final void write(int paramInt)
  {
    if (this.c == null)
      this.c = new byte[1024];
    if (this.d >= this.c.length)
    {
      a(this.c, 0, this.d, false);
      this.d = 0;
    }
    byte[] arrayOfByte = this.c;
    int i = this.d;
    this.d = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 <= 0);
    while (true)
    {
      return;
      a();
      a(paramArrayOfByte, paramInt1, paramInt2, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.a.f
 * JD-Core Version:    0.6.2
 */