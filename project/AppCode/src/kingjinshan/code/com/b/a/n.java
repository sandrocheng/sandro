package com.b.a;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

public final class n
{
  public static final int a = 4096;
  public static final int b = 4;
  public static final int c = 8;
  private final byte[] d;
  private final int e;
  private int f;
  private final OutputStream g;

  private n(OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    this.g = paramOutputStream;
    this.d = paramArrayOfByte;
    this.f = 0;
    this.e = paramArrayOfByte.length;
  }

  private n(byte[] paramArrayOfByte, int paramInt)
  {
    this.g = null;
    this.d = paramArrayOfByte;
    this.f = 0;
    this.e = (paramInt + 0);
  }

  public static int a()
  {
    return 8 + p(6);
  }

  static int a(int paramInt)
  {
    int i = 4096;
    if (paramInt > i);
    while (true)
    {
      return i;
      i = paramInt;
    }
  }

  public static n a(OutputStream paramOutputStream)
  {
    return a(paramOutputStream, 4096);
  }

  public static n a(OutputStream paramOutputStream, int paramInt)
  {
    return new n(paramOutputStream, new byte[paramInt]);
  }

  public static n a(byte[] paramArrayOfByte)
  {
    return new n(paramArrayOfByte, paramArrayOfByte.length);
  }

  private static n a(byte[] paramArrayOfByte, int paramInt)
  {
    return new n(paramArrayOfByte, paramInt);
  }

  private void a(byte paramByte)
  {
    if (this.f == this.e)
      l();
    byte[] arrayOfByte = this.d;
    int i = this.f;
    this.f = (i + 1);
    arrayOfByte[i] = paramByte;
  }

  private void a(int paramInt, float paramFloat)
  {
    f(paramInt, 5);
    a(paramFloat);
  }

  private void a(int paramInt, String paramString)
  {
    f(paramInt, 2);
    a(paramString);
  }

  private void a(i parami, int paramInt)
  {
    if (this.e - this.f >= paramInt)
      parami.a(this.d, 0, this.f, paramInt);
    int j;
    int k;
    for (this.f = (paramInt + this.f); ; this.f = k)
    {
      return;
      int i = this.e - this.f;
      parami.a(this.d, 0, this.f, i);
      j = i + 0;
      k = paramInt - i;
      this.f = this.e;
      l();
      if (k > this.e)
        break;
      parami.a(this.d, j, 0, k);
    }
    InputStream localInputStream = parami.c();
    if (j != localInputStream.skip(j))
      throw new IllegalStateException("Skip failed? Should never happen.");
    int n;
    int m;
    do
    {
      this.g.write(this.d, 0, n);
      k -= n;
      if (k <= 0)
        break;
      m = Math.min(k, this.e);
      n = localInputStream.read(this.d, 0, m);
    }
    while (n == m);
    throw new IllegalStateException("Read failed? Should never happen");
  }

  public static int b()
  {
    return 1 + p(4);
  }

  private static int b(int paramInt, String paramString)
  {
    return p(paramInt) + b(paramString);
  }

  public static int b(i parami)
  {
    return r(parami.a()) + parami.a();
  }

  public static int b(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      int i = r(arrayOfByte.length);
      int j = arrayOfByte.length;
      return j + i;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 not supported.", localUnsupportedEncodingException);
    }
  }

  private void b(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    if (this.e - this.f >= i)
    {
      System.arraycopy(paramArrayOfByte, 0, this.d, this.f, i);
      this.f = (i + this.f);
    }
    while (true)
    {
      return;
      int j = this.e - this.f;
      System.arraycopy(paramArrayOfByte, 0, this.d, this.f, j);
      int k = j + 0;
      int m = i - j;
      this.f = this.e;
      l();
      if (m <= this.e)
      {
        System.arraycopy(paramArrayOfByte, k, this.d, 0, m);
        this.f = m;
      }
      else
      {
        this.g.write(paramArrayOfByte, k, m);
      }
    }
  }

  private void b(byte[] paramArrayOfByte, int paramInt)
  {
    if (this.e - this.f >= paramInt)
    {
      System.arraycopy(paramArrayOfByte, 0, this.d, this.f, paramInt);
      this.f = (paramInt + this.f);
    }
    while (true)
    {
      return;
      int i = this.e - this.f;
      System.arraycopy(paramArrayOfByte, 0, this.d, this.f, i);
      int j = i + 0;
      int k = paramInt - i;
      this.f = this.e;
      l();
      if (k <= this.e)
      {
        System.arraycopy(paramArrayOfByte, j, this.d, 0, k);
        this.f = k;
      }
      else
      {
        this.g.write(paramArrayOfByte, j, k);
      }
    }
  }

  public static int c()
  {
    return 8;
  }

  public static int c(int paramInt, i parami)
  {
    return p(paramInt) + b(parami);
  }

  public static int c(ex paramex)
  {
    return paramex.b();
  }

  private void c(i parami)
  {
    int i = parami.a();
    if (this.e - this.f >= i)
      parami.a(this.d, 0, this.f, i);
    int k;
    int m;
    for (this.f = (i + this.f); ; this.f = m)
    {
      return;
      int j = this.e - this.f;
      parami.a(this.d, 0, this.f, j);
      k = j + 0;
      m = i - j;
      this.f = this.e;
      l();
      if (m > this.e)
        break;
      parami.a(this.d, k, 0, m);
    }
    InputStream localInputStream = parami.c();
    if (k != localInputStream.skip(k))
      throw new IllegalStateException("Skip failed? Should never happen.");
    int i1;
    int n;
    do
    {
      this.g.write(this.d, 0, i1);
      m -= i1;
      if (m <= 0)
        break;
      n = Math.min(m, this.e);
      i1 = localInputStream.read(this.d, 0, n);
    }
    while (i1 == n);
    throw new IllegalStateException("Read failed? Should never happen");
  }

  public static int d()
  {
    return 4;
  }

  public static int d(int paramInt1, int paramInt2)
  {
    return p(paramInt1) + l(paramInt2);
  }

  public static int d(int paramInt, long paramLong)
  {
    return p(paramInt) + i(paramLong);
  }

  public static int d(int paramInt, ex paramex)
  {
    return 2 * p(paramInt) + paramex.b();
  }

  public static int d(int paramInt, i parami)
  {
    return 2 * p(1) + k(paramInt) + c(3, parami);
  }

  public static int d(ex paramex)
  {
    int i = paramex.b();
    return i + r(i);
  }

  public static int e()
  {
    return 8;
  }

  public static int e(int paramInt1, int paramInt2)
  {
    return p(paramInt1) + l(paramInt2);
  }

  public static int e(int paramInt, long paramLong)
  {
    return p(paramInt) + i(paramLong);
  }

  public static int e(int paramInt, ex paramex)
  {
    return p(paramInt) + d(paramex);
  }

  private void e(ex paramex)
  {
    paramex.a(this);
  }

  public static int f()
  {
    return 4;
  }

  public static int f(int paramInt, ex paramex)
  {
    return 2 * p(1) + k(paramInt) + e(3, paramex);
  }

  public static int f(long paramLong)
  {
    return i(paramLong);
  }

  private static int f(ex paramex)
  {
    return paramex.b();
  }

  private void f(int paramInt, long paramLong)
  {
    f(paramInt, 1);
    l(paramLong);
  }

  public static int g()
  {
    return 1;
  }

  public static int g(long paramLong)
  {
    return i(paramLong);
  }

  private void g(int paramInt1, int paramInt2)
  {
    f(paramInt1, 5);
    x(paramInt2);
  }

  private void g(int paramInt, long paramLong)
  {
    f(paramInt, 0);
    e(paramLong);
  }

  private void g(int paramInt, ex paramex)
  {
    a(paramInt, paramex);
  }

  public static int h()
  {
    return 4;
  }

  private static int h(int paramInt, long paramLong)
  {
    return p(paramInt) + i(j(paramLong));
  }

  private static int h(int paramInt, ex paramex)
  {
    return d(paramInt, paramex);
  }

  public static int h(long paramLong)
  {
    return i(j(paramLong));
  }

  private void h(int paramInt1, int paramInt2)
  {
    f(paramInt1, 0);
    h(paramInt2);
  }

  public static int i()
  {
    return 8;
  }

  public static int i(int paramInt)
  {
    return 8 + p(paramInt);
  }

  private static int i(int paramInt1, int paramInt2)
  {
    return p(paramInt1) + r(s(paramInt2));
  }

  public static int i(long paramLong)
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

  public static int j(int paramInt)
  {
    return 4 + p(paramInt);
  }

  public static long j(long paramLong)
  {
    return paramLong << 1 ^ paramLong >> 63;
  }

  public static int k(int paramInt)
  {
    return p(2) + r(paramInt);
  }

  private void k(long paramLong)
  {
    for (long l = paramLong; ; l >>>= 7)
    {
      if ((0xFFFFFF80 & l) == 0L)
      {
        w((int)l);
        return;
      }
      w(0x80 | 0x7F & (int)l);
    }
  }

  public static int l(int paramInt)
  {
    if (paramInt >= 0);
    for (int i = r(paramInt); ; i = 10)
      return i;
  }

  private void l()
  {
    if (this.g == null)
      throw new o();
    this.g.write(this.d, 0, this.f);
    this.f = 0;
  }

  private void l(long paramLong)
  {
    w(0xFF & (int)paramLong);
    w(0xFF & (int)(paramLong >> 8));
    w(0xFF & (int)(paramLong >> 16));
    w(0xFF & (int)(paramLong >> 24));
    w(0xFF & (int)(paramLong >> 32));
    w(0xFF & (int)(paramLong >> 40));
    w(0xFF & (int)(paramLong >> 48));
    w(0xFF & (int)(paramLong >> 56));
  }

  private int m()
  {
    if (this.g == null)
      return this.e - this.f;
    throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
  }

  public static int m(int paramInt)
  {
    return r(paramInt);
  }

  public static int n(int paramInt)
  {
    return l(paramInt);
  }

  public static int o(int paramInt)
  {
    return r(s(paramInt));
  }

  public static int p(int paramInt)
  {
    return r(go.a(paramInt, 0));
  }

  public static int r(int paramInt)
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

  public static int s(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }

  private static int t(int paramInt)
  {
    return 4 + p(paramInt);
  }

  private static int u(int paramInt)
  {
    return 4 + p(paramInt);
  }

  private static int v(int paramInt)
  {
    return 8 + p(paramInt);
  }

  private void w(int paramInt)
  {
    int i = (byte)paramInt;
    if (this.f == this.e)
      l();
    byte[] arrayOfByte = this.d;
    int j = this.f;
    this.f = (j + 1);
    arrayOfByte[j] = i;
  }

  private void x(int paramInt)
  {
    w(paramInt & 0xFF);
    w(0xFF & paramInt >> 8);
    w(0xFF & paramInt >> 16);
    w(0xFF & paramInt >> 24);
  }

  public final void a(double paramDouble)
  {
    f(6, 1);
    b(paramDouble);
  }

  public final void a(float paramFloat)
  {
    x(Float.floatToRawIntBits(paramFloat));
  }

  public final void a(int paramInt1, int paramInt2)
  {
    f(paramInt1, 0);
    c(paramInt2);
  }

  public final void a(int paramInt, long paramLong)
  {
    f(paramInt, 0);
    k(paramLong);
  }

  public final void a(int paramInt, ex paramex)
  {
    f(paramInt, 3);
    paramex.a(this);
    f(paramInt, 4);
  }

  public final void a(int paramInt, i parami)
  {
    f(paramInt, 2);
    a(parami);
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    f(paramInt, 0);
    a(paramBoolean);
  }

  public final void a(long paramLong)
  {
    k(paramLong);
  }

  public final void a(ex paramex)
  {
    paramex.a(this);
  }

  public final void a(i parami)
  {
    q(parami.a());
    int i = parami.a();
    if (this.e - this.f >= i)
      parami.a(this.d, 0, this.f, i);
    int k;
    int m;
    for (this.f = (i + this.f); ; this.f = m)
    {
      return;
      int j = this.e - this.f;
      parami.a(this.d, 0, this.f, j);
      k = j + 0;
      m = i - j;
      this.f = this.e;
      l();
      if (m > this.e)
        break;
      parami.a(this.d, k, 0, m);
    }
    InputStream localInputStream = parami.c();
    if (k != localInputStream.skip(k))
      throw new IllegalStateException("Skip failed? Should never happen.");
    int i1;
    int n;
    do
    {
      this.g.write(this.d, 0, i1);
      m -= i1;
      if (m <= 0)
        break;
      n = Math.min(m, this.e);
      i1 = localInputStream.read(this.d, 0, n);
    }
    while (i1 == n);
    throw new IllegalStateException("Read failed? Should never happen");
  }

  public final void a(String paramString)
  {
    byte[] arrayOfByte = paramString.getBytes("UTF-8");
    q(arrayOfByte.length);
    int i = arrayOfByte.length;
    if (this.e - this.f >= i)
    {
      System.arraycopy(arrayOfByte, 0, this.d, this.f, i);
      this.f = (i + this.f);
    }
    while (true)
    {
      return;
      int j = this.e - this.f;
      System.arraycopy(arrayOfByte, 0, this.d, this.f, j);
      int k = j + 0;
      int m = i - j;
      this.f = this.e;
      l();
      if (m <= this.e)
      {
        System.arraycopy(arrayOfByte, k, this.d, 0, m);
        this.f = m;
      }
      else
      {
        this.g.write(arrayOfByte, k, m);
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      w(i);
      return;
    }
  }

  public final void b(double paramDouble)
  {
    l(Double.doubleToRawLongBits(paramDouble));
  }

  public final void b(int paramInt)
  {
    f(2, 0);
    q(paramInt);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    f(paramInt1, 5);
    x(paramInt2);
  }

  public final void b(int paramInt, long paramLong)
  {
    f(paramInt, 0);
    k(paramLong);
  }

  public final void b(int paramInt, ex paramex)
  {
    f(paramInt, 2);
    b(paramex);
  }

  public final void b(int paramInt, i parami)
  {
    f(1, 3);
    b(paramInt);
    a(3, parami);
    f(1, 4);
  }

  public final void b(long paramLong)
  {
    k(paramLong);
  }

  public final void b(ex paramex)
  {
    q(paramex.b());
    paramex.a(this);
  }

  public final void c(int paramInt)
  {
    if (paramInt >= 0)
      q(paramInt);
    while (true)
    {
      return;
      k(paramInt);
    }
  }

  public final void c(int paramInt1, int paramInt2)
  {
    f(paramInt1, 0);
    c(paramInt2);
  }

  public final void c(int paramInt, long paramLong)
  {
    f(paramInt, 1);
    l(paramLong);
  }

  public final void c(int paramInt, ex paramex)
  {
    f(1, 3);
    b(paramInt);
    b(3, paramex);
    f(1, 4);
  }

  public final void c(long paramLong)
  {
    l(paramLong);
  }

  public final void d(int paramInt)
  {
    x(paramInt);
  }

  public final void d(long paramLong)
  {
    l(paramLong);
  }

  public final void e(int paramInt)
  {
    q(paramInt);
  }

  public final void e(long paramLong)
  {
    k(j(paramLong));
  }

  public final void f(int paramInt)
  {
    c(paramInt);
  }

  public final void f(int paramInt1, int paramInt2)
  {
    q(go.a(paramInt1, paramInt2));
  }

  public final void g(int paramInt)
  {
    x(paramInt);
  }

  public final void h(int paramInt)
  {
    q(s(paramInt));
  }

  public final void j()
  {
    if (this.g != null)
      l();
  }

  public final void k()
  {
    if (this.g == null)
    {
      if (this.e - this.f != 0)
        throw new IllegalStateException("Did not write as much data as expected.");
    }
    else
      throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
  }

  public final void q(int paramInt)
  {
    int i = paramInt;
    while (true)
    {
      if ((i & 0xFFFFFF80) == 0)
      {
        w(i);
        return;
      }
      w(0x80 | i & 0x7F);
      i >>>= 7;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.n
 * JD-Core Version:    0.6.2
 */