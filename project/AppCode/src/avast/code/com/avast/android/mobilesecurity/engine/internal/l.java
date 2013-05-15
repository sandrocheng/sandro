package com.avast.android.mobilesecurity.engine.internal;

import com.avast.android.mobilesecurity.engine.r;
import java.io.OutputStream;

public class l extends OutputStream
{
  private OutputStream a;
  private long b;
  private long c = 0L;
  private r d;

  public l(OutputStream paramOutputStream, long paramLong, r paramr)
  {
    this.a = paramOutputStream;
    this.b = paramLong;
    this.d = paramr;
  }

  public void close()
  {
    this.a.close();
  }

  public void flush()
  {
    this.a.flush();
  }

  public void write(int paramInt)
  {
    this.a.write(paramInt);
    if (this.d != null)
    {
      r localr = this.d;
      long l = 1L + this.c;
      this.c = l;
      localr.a(l, this.b);
    }
  }

  public void write(byte[] paramArrayOfByte)
  {
    this.a.write(paramArrayOfByte);
    if (this.d != null)
    {
      this.c += paramArrayOfByte.length;
      this.d.a(this.c, this.b);
    }
  }

  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a.write(paramArrayOfByte, paramInt1, paramInt2);
    if (this.d != null)
    {
      this.c += paramInt2;
      this.d.a(this.c, this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.l
 * JD-Core Version:    0.6.2
 */