package com.avast.android.mobilesecurity.engine.internal;

import com.avast.android.mobilesecurity.engine.r;
import java.io.InputStream;

public class k extends InputStream
{
  private InputStream a;
  private long b;
  private long c = 0L;
  private r d;

  public k(InputStream paramInputStream, long paramLong, r paramr)
  {
    this.a = paramInputStream;
    this.b = paramLong;
    this.d = paramr;
  }

  public int available()
  {
    return this.a.available();
  }

  public void close()
  {
    this.a.close();
  }

  public void mark(int paramInt)
  {
    this.a.mark(paramInt);
  }

  public boolean markSupported()
  {
    return this.a.markSupported();
  }

  public int read()
  {
    int i = this.a.read();
    if ((this.d != null) && (i != -1) && (this.b > 0L))
    {
      r localr = this.d;
      long l = 1L + this.c;
      this.c = l;
      localr.a(l, this.b);
    }
    return i;
  }

  public int read(byte[] paramArrayOfByte)
  {
    int i = this.a.read(paramArrayOfByte);
    if ((this.d != null) && (i != -1) && (this.b > 0L))
    {
      this.c += i;
      this.d.a(this.c, this.b);
    }
    return i;
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = this.a.read(paramArrayOfByte, paramInt1, paramInt2);
    if ((this.d != null) && (i != -1) && (this.b > 0L))
    {
      this.c += i;
      this.d.a(this.c, this.b);
    }
    return i;
  }

  public void reset()
  {
    try
    {
      this.a.reset();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long skip(long paramLong)
  {
    return this.a.skip(paramLong);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.k
 * JD-Core Version:    0.6.2
 */