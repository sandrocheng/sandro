package com.b.a;

import java.io.FilterInputStream;
import java.io.InputStream;

final class f extends FilterInputStream
{
  private int a;

  f(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream);
    this.a = paramInt;
  }

  public final int available()
  {
    return Math.min(super.available(), this.a);
  }

  public final int read()
  {
    int i;
    if (this.a <= 0)
      i = -1;
    while (true)
    {
      return i;
      i = super.read();
      if (i >= 0)
        this.a -= 1;
    }
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i;
    if (this.a <= 0)
      i = -1;
    while (true)
    {
      return i;
      i = super.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, this.a));
      if (i >= 0)
        this.a -= i;
    }
  }

  public final long skip(long paramLong)
  {
    long l = super.skip(Math.min(paramLong, this.a));
    if (l >= 0L)
      this.a = ((int)(this.a - l));
    return l;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.f
 * JD-Core Version:    0.6.2
 */