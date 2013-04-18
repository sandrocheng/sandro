package com.hoi.a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class e extends FilterInputStream
{
  private static byte[] b = new byte[0];
  private static final int c = 2048;
  private final b a;
  private boolean d = false;
  private byte[] e = new byte[2048];
  private int f;
  private int g;

  public e(InputStream paramInputStream, int paramInt)
  {
    this(paramInputStream, paramInt, false);
  }

  public e(InputStream paramInputStream, int paramInt, boolean paramBoolean)
  {
    super(paramInputStream);
    if (paramBoolean);
    for (this.a = new d(paramInt, null); ; this.a = new c(paramInt, null))
    {
      this.a.a = new byte[this.a.a(2048)];
      this.f = 0;
      this.g = 0;
      return;
    }
  }

  private void a()
  {
    if (this.d);
    while (true)
    {
      return;
      int i = this.in.read(this.e);
      if (i == -1)
        this.d = true;
      for (boolean bool = this.a.a(b, 0, 0, true); !bool; bool = this.a.a(this.e, 0, i, false))
        throw new IOException("bad base-64");
      this.g = this.a.b;
      this.f = 0;
    }
  }

  public final int available()
  {
    return this.g - this.f;
  }

  public final void close()
  {
    this.in.close();
    this.e = null;
  }

  public final void mark(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean markSupported()
  {
    return false;
  }

  public final int read()
  {
    if (this.f >= this.g)
      a();
    if (this.f >= this.g);
    byte[] arrayOfByte;
    int i;
    for (int j = -1; ; j = arrayOfByte[i])
    {
      return j;
      arrayOfByte = this.a.a;
      i = this.f;
      this.f = (i + 1);
    }
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.f >= this.g)
      a();
    int i;
    if (this.f >= this.g)
      i = -1;
    while (true)
    {
      return i;
      i = Math.min(paramInt2, this.g - this.f);
      System.arraycopy(this.a.a, this.f, paramArrayOfByte, paramInt1, i);
      this.f = (i + this.f);
    }
  }

  public final void reset()
  {
    throw new UnsupportedOperationException();
  }

  public final long skip(long paramLong)
  {
    if (this.f >= this.g)
      a();
    long l;
    if (this.f >= this.g)
      l = 0L;
    while (true)
    {
      return l;
      l = Math.min(paramLong, this.g - this.f);
      this.f = ((int)(l + this.f));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.a.e
 * JD-Core Version:    0.6.2
 */