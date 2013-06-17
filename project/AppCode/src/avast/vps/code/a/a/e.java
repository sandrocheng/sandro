package a.a;

import java.io.InputStream;
import java.io.OutputStream;

public final class e
{
  private final byte[] a;
  private final int b;
  private int c;
  private final OutputStream d = null;

  private e(byte[] paramArrayOfByte, int paramInt)
  {
    this.a = paramArrayOfByte;
    this.c = 0;
    this.b = (paramInt + 0);
  }

  public static int a(c paramc)
  {
    return d(paramc.a()) + paramc.a();
  }

  public static e a(byte[] paramArrayOfByte, int paramInt)
  {
    return new e(paramArrayOfByte, paramInt);
  }

  public static int b(int paramInt)
  {
    return d(u.a(paramInt, 0));
  }

  public static int b(int paramInt1, int paramInt2)
  {
    return b(paramInt1) + d(e(paramInt2));
  }

  public static int b(int paramInt, long paramLong)
  {
    int i = b(paramInt);
    int j;
    if ((0xFFFFFF80 & paramLong) == 0L)
      j = 1;
    while (true)
    {
      return j + i;
      if ((0xFFFFC000 & paramLong) == 0L)
        j = 2;
      else if ((0xFFE00000 & paramLong) == 0L)
        j = 3;
      else if ((0xF0000000 & paramLong) == 0L)
        j = 4;
      else if ((0x0 & paramLong) == 0L)
        j = 5;
      else if ((0x0 & paramLong) == 0L)
        j = 6;
      else if ((0x0 & paramLong) == 0L)
        j = 7;
      else if ((0x0 & paramLong) == 0L)
        j = 8;
      else if ((0x0 & paramLong) == 0L)
        j = 9;
      else
        j = 10;
    }
  }

  public static int b(int paramInt, c paramc)
  {
    return b(paramInt) + a(paramc);
  }

  private void b()
  {
    if (this.d == null)
      throw new f();
    this.d.write(this.a, 0, this.c);
    this.c = 0;
  }

  public static int d(int paramInt)
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

  private static int e(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }

  public final int a()
  {
    if (this.d == null)
      return this.b - this.c;
    throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
  }

  public final void a(int paramInt)
  {
    int i = (byte)paramInt;
    if (this.c == this.b)
      b();
    byte[] arrayOfByte = this.a;
    int j = this.c;
    this.c = (j + 1);
    arrayOfByte[j] = i;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    c(paramInt1, 0);
    c(e(paramInt2));
  }

  public final void a(int paramInt, long paramLong)
  {
    c(paramInt, 0);
    a(paramLong);
  }

  public final void a(int paramInt, c paramc)
  {
    c(paramInt, 2);
    c(paramc.a());
    int i = paramc.a();
    if (this.b - this.c >= i)
      paramc.a(this.a, 0, this.c, i);
    int k;
    int m;
    for (this.c = (i + this.c); ; this.c = m)
    {
      return;
      int j = this.b - this.c;
      paramc.a(this.a, 0, this.c, j);
      k = j + 0;
      m = i - j;
      this.c = this.b;
      b();
      if (m > this.b)
        break;
      paramc.a(this.a, k, 0, m);
    }
    InputStream localInputStream = paramc.c();
    if (k != localInputStream.skip(k))
      throw new IllegalStateException("Skip failed? Should never happen.");
    int i1;
    int n;
    do
    {
      this.d.write(this.a, 0, i1);
      m -= i1;
      if (m <= 0)
        break;
      n = Math.min(m, this.b);
      i1 = localInputStream.read(this.a, 0, n);
    }
    while (i1 == n);
    throw new IllegalStateException("Read failed? Should never happen");
  }

  public final void a(long paramLong)
  {
    while (true)
    {
      if ((0xFFFFFF80 & paramLong) == 0L)
      {
        a((int)paramLong);
        return;
      }
      a(0x80 | 0x7F & (int)paramLong);
      paramLong >>>= 7;
    }
  }

  public final void c(int paramInt)
  {
    while (true)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        a(paramInt);
        return;
      }
      a(0x80 | paramInt & 0x7F);
      paramInt >>>= 7;
    }
  }

  public final void c(int paramInt1, int paramInt2)
  {
    c(u.a(paramInt1, paramInt2));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.e
 * JD-Core Version:    0.6.2
 */