package com.d.a;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.OutputStream;
import java.io.PrintStream;

public final class d
  implements b
{
  public static final int a = 32767;
  public static final byte b = 0;
  public static final int c = 246;
  public static final int d = 247;
  public static final int e = 248;
  public static final int f = 249;
  public static final int g = 250;
  public static final int h = 251;
  public static final int i = 252;
  public static final int j = 253;
  public static final int k = 254;
  public static final int l = 255;
  private ByteArrayOutputStream m = new ByteArrayOutputStream();
  private boolean n = false;
  private DataOutputStream o = null;

  private d(DataOutputStream paramDataOutputStream)
  {
    this.o = paramDataOutputStream;
    this.o.writeByte(209);
    this.o.writeByte(255);
    this.o.writeByte(209);
    this.o.writeByte(255);
    this.o.writeByte(4);
  }

  private d(OutputStream paramOutputStream)
  {
    this(new DataOutputStream(paramOutputStream));
  }

  private void b()
  {
    if (this.m.size() > 0)
    {
      if (this.m.size() > 246)
        break label56;
      this.o.writeByte(this.m.size());
    }
    while (true)
    {
      this.m.writeTo(this.o);
      this.m.reset();
      return;
      label56: if (this.m.size() <= 65535)
      {
        this.o.writeByte(247);
        this.o.writeShort(this.m.size());
      }
      else
      {
        this.o.writeByte(248);
        this.o.writeInt(this.m.size());
      }
    }
  }

  public final void a()
  {
    b();
    this.o.flush();
  }

  public final void a(byte paramByte)
  {
    this.m.write(paramByte);
    if (this.m.size() >= 32767)
      b();
  }

  public final void a(long paramLong, int paramInt)
  {
    b();
    if (this.n)
      System.err.println("COPY off: " + paramLong + ", len: " + paramInt);
    if (paramLong > 2147483647L)
    {
      this.o.writeByte(255);
      this.o.writeLong(paramLong);
      this.o.writeInt(paramInt);
    }
    while (true)
    {
      return;
      if (paramLong < 65536L)
      {
        if (paramInt < 256)
        {
          this.o.writeByte(249);
          this.o.writeShort((int)paramLong);
          this.o.writeByte(paramInt);
        }
        else if (paramInt > 65535)
        {
          this.o.writeByte(251);
          this.o.writeShort((int)paramLong);
          this.o.writeInt(paramInt);
        }
        else
        {
          this.o.writeByte(250);
          this.o.writeShort((int)paramLong);
          this.o.writeShort(paramInt);
        }
      }
      else if (paramInt < 256)
      {
        this.o.writeByte(252);
        this.o.writeInt((int)paramLong);
        this.o.writeByte(paramInt);
      }
      else if (paramInt > 65535)
      {
        this.o.writeByte(254);
        this.o.writeInt((int)paramLong);
        this.o.writeInt(paramInt);
      }
      else
      {
        this.o.writeByte(253);
        this.o.writeInt((int)paramLong);
        this.o.writeShort(paramInt);
      }
    }
  }

  public final void close()
  {
    b();
    this.o.flush();
    this.o.write(0);
    this.o.close();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.d.a.d
 * JD-Core Version:    0.6.2
 */