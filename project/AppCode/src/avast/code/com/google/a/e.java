package com.google.a;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

public final class e
{
  private final byte[] a;
  private final int b;
  private int c;
  private final OutputStream d = null;

  private e(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a = paramArrayOfByte;
    this.c = paramInt1;
    this.b = (paramInt1 + paramInt2);
  }

  public static e a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static e a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new e(paramArrayOfByte, paramInt1, paramInt2);
  }

  public static int b(double paramDouble)
  {
    return 8;
  }

  public static int b(float paramFloat)
  {
    return 4;
  }

  public static int b(int paramInt, float paramFloat)
  {
    return n(paramInt) + b(paramFloat);
  }

  public static int b(int paramInt, c paramc)
  {
    return n(paramInt) + b(paramc);
  }

  public static int b(int paramInt, boolean paramBoolean)
  {
    return n(paramInt) + b(paramBoolean);
  }

  public static int b(c paramc)
  {
    return p(paramc.a()) + paramc.a();
  }

  public static int b(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      int i = p(arrayOfByte.length);
      int j = arrayOfByte.length;
      return j + i;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 not supported.", localUnsupportedEncodingException);
    }
  }

  public static int b(boolean paramBoolean)
  {
    return 1;
  }

  public static int c(aa paramaa)
  {
    return paramaa.w();
  }

  private void c()
  {
    if (this.d == null)
      throw new f();
    this.d.write(this.a, 0, this.c);
    this.c = 0;
  }

  public static int d(int paramInt, long paramLong)
  {
    return n(paramInt) + f(paramLong);
  }

  public static int d(int paramInt, aa paramaa)
  {
    return n(paramInt) + d(paramaa);
  }

  public static int d(aa paramaa)
  {
    int i = paramaa.w();
    return i + p(i);
  }

  public static int e(int paramInt1, int paramInt2)
  {
    return n(paramInt1) + g(paramInt2);
  }

  public static int e(int paramInt, long paramLong)
  {
    return n(paramInt) + g(paramLong);
  }

  public static int f(int paramInt1, int paramInt2)
  {
    return n(paramInt1) + i(paramInt2);
  }

  public static int f(int paramInt, long paramLong)
  {
    return n(paramInt) + j(paramLong);
  }

  public static int f(long paramLong)
  {
    return l(paramLong);
  }

  public static int g(int paramInt)
  {
    if (paramInt >= 0);
    for (int i = p(paramInt); ; i = 10)
      return i;
  }

  public static int g(int paramInt1, int paramInt2)
  {
    return n(paramInt1) + j(paramInt2);
  }

  public static int g(long paramLong)
  {
    return l(paramLong);
  }

  public static int h(int paramInt)
  {
    return 4;
  }

  public static int h(int paramInt1, int paramInt2)
  {
    return n(paramInt1) + l(paramInt2);
  }

  public static int h(long paramLong)
  {
    return 8;
  }

  public static int i(int paramInt)
  {
    return p(paramInt);
  }

  public static int i(long paramLong)
  {
    return 8;
  }

  public static int j(int paramInt)
  {
    return g(paramInt);
  }

  public static int j(long paramLong)
  {
    return l(n(paramLong));
  }

  public static int k(int paramInt)
  {
    return 4;
  }

  public static int l(int paramInt)
  {
    return p(r(paramInt));
  }

  public static int l(long paramLong)
  {
    int i;
    if ((0xFFFFFF80 & paramLong) == 0L)
      i = 1;
    while (true)
    {
      return i;
      if ((0xFFFFC000 & paramLong) == 0L)
        i = 2;
      else if ((0xFFE00000 & paramLong) == 0L)
        i = 3;
      else if ((0xF0000000 & paramLong) == 0L)
        i = 4;
      else if ((0x0 & paramLong) == 0L)
        i = 5;
      else if ((0x0 & paramLong) == 0L)
        i = 6;
      else if ((0x0 & paramLong) == 0L)
        i = 7;
      else if ((0x0 & paramLong) == 0L)
        i = 8;
      else if ((0x0 & paramLong) == 0L)
        i = 9;
      else
        i = 10;
    }
  }

  public static int n(int paramInt)
  {
    return p(ap.a(paramInt, 0));
  }

  public static long n(long paramLong)
  {
    return paramLong << 1 ^ paramLong >> 63;
  }

  public static int p(int paramInt)
  {
    int i;
    if ((paramInt & 0xFFFFFF80) == 0)
      i = 1;
    while (true)
    {
      return i;
      if ((paramInt & 0xFFFFC000) == 0)
        i = 2;
      else if ((0xFFE00000 & paramInt) == 0)
        i = 3;
      else if ((0xF0000000 & paramInt) == 0)
        i = 4;
      else
        i = 5;
    }
  }

  public static int r(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }

  public int a()
  {
    if (this.d == null)
      return this.b - this.c;
    throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
  }

  public void a(byte paramByte)
  {
    if (this.c == this.b)
      c();
    byte[] arrayOfByte = this.a;
    int i = this.c;
    this.c = (i + 1);
    arrayOfByte[i] = paramByte;
  }

  public void a(double paramDouble)
  {
    m(Double.doubleToRawLongBits(paramDouble));
  }

  public void a(float paramFloat)
  {
    q(Float.floatToRawIntBits(paramFloat));
  }

  public void a(int paramInt)
  {
    if (paramInt >= 0)
      o(paramInt);
    while (true)
    {
      return;
      k(paramInt);
    }
  }

  public void a(int paramInt, float paramFloat)
  {
    i(paramInt, 5);
    a(paramFloat);
  }

  public void a(int paramInt1, int paramInt2)
  {
    i(paramInt1, 0);
    a(paramInt2);
  }

  public void a(int paramInt, long paramLong)
  {
    i(paramInt, 0);
    a(paramLong);
  }

  public void a(int paramInt, aa paramaa)
  {
    i(paramInt, 3);
    a(paramaa);
    i(paramInt, 4);
  }

  public void a(int paramInt, c paramc)
  {
    i(paramInt, 2);
    a(paramc);
  }

  public void a(int paramInt, boolean paramBoolean)
  {
    i(paramInt, 0);
    a(paramBoolean);
  }

  public void a(long paramLong)
  {
    k(paramLong);
  }

  public void a(aa paramaa)
  {
    paramaa.a(this);
  }

  public void a(c paramc)
  {
    o(paramc.a());
    c(paramc);
  }

  public void a(c paramc, int paramInt1, int paramInt2)
  {
    if (this.b - this.c >= paramInt2)
      paramc.a(this.a, paramInt1, this.c, paramInt2);
    int j;
    int k;
    for (this.c = (paramInt2 + this.c); ; this.c = k)
    {
      return;
      int i = this.b - this.c;
      paramc.a(this.a, paramInt1, this.c, i);
      j = paramInt1 + i;
      k = paramInt2 - i;
      this.c = this.b;
      c();
      if (k > this.b)
        break;
      paramc.a(this.a, j, 0, k);
    }
    InputStream localInputStream = paramc.c();
    if (j != localInputStream.skip(j))
      throw new IllegalStateException("Skip failed? Should never happen.");
    int n;
    int m;
    do
    {
      this.d.write(this.a, 0, n);
      k -= n;
      if (k <= 0)
        break;
      m = Math.min(k, this.b);
      n = localInputStream.read(this.a, 0, m);
    }
    while (n == m);
    throw new IllegalStateException("Read failed? Should never happen");
  }

  public void a(String paramString)
  {
    byte[] arrayOfByte = paramString.getBytes("UTF-8");
    o(arrayOfByte.length);
    b(arrayOfByte);
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      m(i);
      return;
    }
  }

  public void b()
  {
    if (a() != 0)
      throw new IllegalStateException("Did not write as much data as expected.");
  }

  public void b(int paramInt)
  {
    q(paramInt);
  }

  public void b(int paramInt1, int paramInt2)
  {
    i(paramInt1, 0);
    c(paramInt2);
  }

  public void b(int paramInt, long paramLong)
  {
    i(paramInt, 0);
    b(paramLong);
  }

  public void b(int paramInt, aa paramaa)
  {
    i(paramInt, 2);
    b(paramaa);
  }

  public void b(long paramLong)
  {
    k(paramLong);
  }

  public void b(aa paramaa)
  {
    o(paramaa.w());
    paramaa.a(this);
  }

  public void b(byte[] paramArrayOfByte)
  {
    b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.b - this.c >= paramInt2)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.a, this.c, paramInt2);
      this.c = (paramInt2 + this.c);
    }
    while (true)
    {
      return;
      int i = this.b - this.c;
      System.arraycopy(paramArrayOfByte, paramInt1, this.a, this.c, i);
      int j = paramInt1 + i;
      int k = paramInt2 - i;
      this.c = this.b;
      c();
      if (k <= this.b)
      {
        System.arraycopy(paramArrayOfByte, j, this.a, 0, k);
        this.c = k;
      }
      else
      {
        this.d.write(paramArrayOfByte, j, k);
      }
    }
  }

  public void c(int paramInt)
  {
    o(paramInt);
  }

  public void c(int paramInt1, int paramInt2)
  {
    i(paramInt1, 0);
    d(paramInt2);
  }

  public void c(int paramInt, long paramLong)
  {
    i(paramInt, 0);
    e(paramLong);
  }

  public void c(int paramInt, aa paramaa)
  {
    i(1, 3);
    b(2, paramInt);
    b(3, paramaa);
    i(1, 4);
  }

  public void c(long paramLong)
  {
    m(paramLong);
  }

  public void c(c paramc)
  {
    a(paramc, 0, paramc.a());
  }

  public void d(int paramInt)
  {
    a(paramInt);
  }

  public void d(int paramInt1, int paramInt2)
  {
    i(paramInt1, 0);
    f(paramInt2);
  }

  public void d(long paramLong)
  {
    m(paramLong);
  }

  public void e(int paramInt)
  {
    q(paramInt);
  }

  public void e(long paramLong)
  {
    k(n(paramLong));
  }

  public void f(int paramInt)
  {
    o(r(paramInt));
  }

  public void i(int paramInt1, int paramInt2)
  {
    o(ap.a(paramInt1, paramInt2));
  }

  public void k(long paramLong)
  {
    while (true)
    {
      if ((0xFFFFFF80 & paramLong) == 0L)
      {
        m((int)paramLong);
        return;
      }
      m(0x80 | 0x7F & (int)paramLong);
      paramLong >>>= 7;
    }
  }

  public void m(int paramInt)
  {
    a((byte)paramInt);
  }

  public void m(long paramLong)
  {
    m(0xFF & (int)paramLong);
    m(0xFF & (int)(paramLong >> 8));
    m(0xFF & (int)(paramLong >> 16));
    m(0xFF & (int)(paramLong >> 24));
    m(0xFF & (int)(paramLong >> 32));
    m(0xFF & (int)(paramLong >> 40));
    m(0xFF & (int)(paramLong >> 48));
    m(0xFF & (int)(paramLong >> 56));
  }

  public void o(int paramInt)
  {
    while (true)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        m(paramInt);
        return;
      }
      m(0x80 | paramInt & 0x7F);
      paramInt >>>= 7;
    }
  }

  public void q(int paramInt)
  {
    m(paramInt & 0xFF);
    m(0xFF & paramInt >> 8);
    m(0xFF & paramInt >> 16);
    m(0xFF & paramInt >> 24);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.e
 * JD-Core Version:    0.6.2
 */