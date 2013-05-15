package com.google.a;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d
{
  private final byte[] a;
  private int b;
  private int c;
  private int d;
  private final InputStream e;
  private int f;
  private int g;
  private int h = 2147483647;
  private int i;
  private int j = 64;
  private int k = 67108864;

  private d(InputStream paramInputStream)
  {
    this.a = new byte[4096];
    this.b = 0;
    this.d = 0;
    this.g = 0;
    this.e = paramInputStream;
  }

  private d(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a = paramArrayOfByte;
    this.b = (paramInt1 + paramInt2);
    this.d = paramInt1;
    this.g = (-paramInt1);
    this.e = null;
  }

  public static long a(long paramLong)
  {
    return paramLong >>> 1 ^ -(1L & paramLong);
  }

  public static d a(InputStream paramInputStream)
  {
    return new d(paramInputStream);
  }

  public static d a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    d locald = new d(paramArrayOfByte, paramInt1, paramInt2);
    try
    {
      locald.d(paramInt2);
      return locald;
    }
    catch (x localx)
    {
      throw new IllegalArgumentException(localx);
    }
  }

  private boolean a(boolean paramBoolean)
  {
    if (this.d < this.b)
      throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
    boolean bool;
    if (this.g + this.b == this.h)
    {
      if (paramBoolean)
        throw x.a();
      bool = false;
    }
    while (true)
    {
      return bool;
      this.g += this.b;
      this.d = 0;
      if (this.e == null);
      for (int m = -1; ; m = this.e.read(this.a))
      {
        this.b = m;
        if ((this.b != 0) && (this.b >= -1))
          break;
        throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.b + "\nThe InputStream implementation is buggy.");
      }
      if (this.b == -1)
      {
        this.b = 0;
        if (paramBoolean)
          throw x.a();
        bool = false;
      }
      else
      {
        z();
        int n = this.g + this.b + this.c;
        if ((n > this.k) || (n < 0))
          throw x.h();
        bool = true;
      }
    }
  }

  public static int c(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }

  private void z()
  {
    this.b += this.c;
    int m = this.g + this.b;
    if (m > this.h)
    {
      this.c = (m - this.h);
      this.b -= this.c;
    }
    while (true)
    {
      return;
      this.c = 0;
    }
  }

  public int a()
  {
    int m = 0;
    if (x())
      this.f = 0;
    while (true)
    {
      return m;
      this.f = s();
      if (ap.b(this.f) == 0)
        throw x.d();
      m = this.f;
    }
  }

  public void a(int paramInt)
  {
    if (this.f != paramInt)
      throw x.e();
  }

  public void a(int paramInt, ab paramab, g paramg)
  {
    if (this.i >= this.j)
      throw x.g();
    this.i = (1 + this.i);
    paramab.c(this, paramg);
    a(ap.a(paramInt, 4));
    this.i = (-1 + this.i);
  }

  public void a(ab paramab, g paramg)
  {
    int m = s();
    if (this.i >= this.j)
      throw x.g();
    int n = d(m);
    this.i = (1 + this.i);
    paramab.c(this, paramg);
    a(0);
    this.i = (-1 + this.i);
    e(n);
  }

  public void b()
  {
    int m;
    do
      m = a();
    while ((m != 0) && (b(m)));
  }

  public boolean b(int paramInt)
  {
    boolean bool = true;
    switch (ap.a(paramInt))
    {
    default:
      throw x.f();
    case 0:
      g();
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return bool;
      v();
      continue;
      g(s());
      continue;
      b();
      a(ap.a(ap.b(paramInt), 4));
      continue;
      bool = false;
      continue;
      u();
    }
  }

  public double c()
  {
    return Double.longBitsToDouble(v());
  }

  public float d()
  {
    return Float.intBitsToFloat(u());
  }

  public int d(int paramInt)
  {
    if (paramInt < 0)
      throw x.b();
    int m = paramInt + (this.g + this.d);
    int n = this.h;
    if (m > n)
      throw x.a();
    this.h = m;
    z();
    return n;
  }

  public long e()
  {
    return t();
  }

  public void e(int paramInt)
  {
    this.h = paramInt;
    z();
  }

  public long f()
  {
    return t();
  }

  public byte[] f(int paramInt)
  {
    if (paramInt < 0)
      throw x.b();
    if (paramInt + (this.g + this.d) > this.h)
    {
      g(this.h - this.g - this.d);
      throw x.a();
    }
    Object localObject;
    if (paramInt <= this.b - this.d)
    {
      localObject = new byte[paramInt];
      System.arraycopy(this.a, this.d, localObject, 0, paramInt);
      this.d = (paramInt + this.d);
    }
    while (true)
    {
      return localObject;
      if (paramInt < 4096)
      {
        byte[] arrayOfByte4 = new byte[paramInt];
        int i8 = this.b - this.d;
        System.arraycopy(this.a, this.d, arrayOfByte4, 0, i8);
        this.d = this.b;
        a(true);
        while (paramInt - i8 > this.b)
        {
          System.arraycopy(this.a, 0, arrayOfByte4, i8, this.b);
          i8 += this.b;
          this.d = this.b;
          a(true);
        }
        System.arraycopy(this.a, 0, arrayOfByte4, i8, paramInt - i8);
        this.d = (paramInt - i8);
        localObject = arrayOfByte4;
      }
      else
      {
        int m = this.d;
        int n = this.b;
        this.g += this.b;
        this.d = 0;
        this.b = 0;
        int i1 = paramInt - (n - m);
        ArrayList localArrayList = new ArrayList();
        int i6;
        for (int i2 = i1; i2 > 0; i2 = i6)
        {
          byte[] arrayOfByte3 = new byte[Math.min(i2, 4096)];
          int i5 = 0;
          while (i5 < arrayOfByte3.length)
          {
            if (this.e == null);
            for (int i7 = -1; i7 == -1; i7 = this.e.read(arrayOfByte3, i5, arrayOfByte3.length - i5))
              throw x.a();
            this.g = (i7 + this.g);
            i5 += i7;
          }
          i6 = i2 - arrayOfByte3.length;
          localArrayList.add(arrayOfByte3);
        }
        byte[] arrayOfByte1 = new byte[paramInt];
        int i3 = n - m;
        System.arraycopy(this.a, m, arrayOfByte1, 0, i3);
        Iterator localIterator = localArrayList.iterator();
        int i4 = i3;
        while (localIterator.hasNext())
        {
          byte[] arrayOfByte2 = (byte[])localIterator.next();
          System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i4, arrayOfByte2.length);
          i4 += arrayOfByte2.length;
        }
        localObject = arrayOfByte1;
      }
    }
  }

  public int g()
  {
    return s();
  }

  public void g(int paramInt)
  {
    if (paramInt < 0)
      throw x.b();
    if (paramInt + (this.g + this.d) > this.h)
    {
      g(this.h - this.g - this.d);
      throw x.a();
    }
    if (paramInt <= this.b - this.d);
    int m;
    for (this.d = (paramInt + this.d); ; this.d = (paramInt - m))
    {
      return;
      m = this.b - this.d;
      this.d = this.b;
      a(true);
      while (paramInt - m > this.b)
      {
        m += this.b;
        this.d = this.b;
        a(true);
      }
    }
  }

  public long h()
  {
    return v();
  }

  public int i()
  {
    return u();
  }

  public boolean j()
  {
    if (s() != 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String k()
  {
    int m = s();
    String str;
    if ((m <= this.b - this.d) && (m > 0))
    {
      str = new String(this.a, this.d, m, "UTF-8");
      this.d = (m + this.d);
    }
    while (true)
    {
      return str;
      str = new String(f(m), "UTF-8");
    }
  }

  public c l()
  {
    int m = s();
    c localc;
    if (m == 0)
      localc = c.a;
    while (true)
    {
      return localc;
      if ((m <= this.b - this.d) && (m > 0))
      {
        localc = c.a(this.a, this.d, m);
        this.d = (m + this.d);
      }
      else
      {
        localc = c.a(f(m));
      }
    }
  }

  public int m()
  {
    return s();
  }

  public int n()
  {
    return s();
  }

  public int o()
  {
    return u();
  }

  public long p()
  {
    return v();
  }

  public int q()
  {
    return c(s());
  }

  public long r()
  {
    return a(t());
  }

  public int s()
  {
    int m = y();
    if (m >= 0);
    int i7;
    do
    {
      int i4;
      int i5;
      while (true)
      {
        return m;
        int n = m & 0x7F;
        int i1 = y();
        if (i1 >= 0)
        {
          m = n | i1 << 7;
        }
        else
        {
          int i2 = n | (i1 & 0x7F) << 7;
          int i3 = y();
          if (i3 >= 0)
          {
            m = i2 | i3 << 14;
          }
          else
          {
            i4 = i2 | (i3 & 0x7F) << 14;
            i5 = y();
            if (i5 < 0)
              break;
            m = i4 | i5 << 21;
          }
        }
      }
      int i6 = i4 | (i5 & 0x7F) << 21;
      i7 = y();
      m = i6 | i7 << 28;
    }
    while (i7 >= 0);
    for (int i8 = 0; ; i8++)
    {
      if (i8 >= 5)
        break label160;
      if (y() >= 0)
        break;
    }
    label160: throw x.c();
  }

  public long t()
  {
    int m = 0;
    long l = 0L;
    while (m < 64)
    {
      int n = y();
      l |= (n & 0x7F) << m;
      if ((n & 0x80) == 0)
        return l;
      m += 7;
    }
    throw x.c();
  }

  public int u()
  {
    int m = y();
    int n = y();
    int i1 = y();
    int i2 = y();
    return m & 0xFF | (n & 0xFF) << 8 | (i1 & 0xFF) << 16 | (i2 & 0xFF) << 24;
  }

  public long v()
  {
    int m = y();
    int n = y();
    int i1 = y();
    int i2 = y();
    int i3 = y();
    int i4 = y();
    int i5 = y();
    int i6 = y();
    return 0xFF & m | (0xFF & n) << 8 | (0xFF & i1) << 16 | (0xFF & i2) << 24 | (0xFF & i3) << 32 | (0xFF & i4) << 40 | (0xFF & i5) << 48 | (0xFF & i6) << 56;
  }

  public int w()
  {
    if (this.h == 2147483647);
    int m;
    for (int n = -1; ; n = this.h - m)
    {
      return n;
      m = this.g + this.d;
    }
  }

  public boolean x()
  {
    int m = this.d;
    int n = this.b;
    boolean bool1 = false;
    if (m == n)
    {
      boolean bool2 = a(false);
      bool1 = false;
      if (!bool2)
        bool1 = true;
    }
    return bool1;
  }

  public byte y()
  {
    if (this.d == this.b)
      a(true);
    byte[] arrayOfByte = this.a;
    int m = this.d;
    this.d = (m + 1);
    return arrayOfByte[m];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.d
 * JD-Core Version:    0.6.2
 */