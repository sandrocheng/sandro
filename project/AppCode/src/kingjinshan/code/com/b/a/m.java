package com.b.a;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class m
{
  private static final int l = 64;
  private static final int m = 67108864;
  private static final int n = 4096;
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

  private m(InputStream paramInputStream)
  {
    this.a = new byte[4096];
    this.b = 0;
    this.d = 0;
    this.g = 0;
    this.e = paramInputStream;
  }

  private m(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a = paramArrayOfByte;
    this.b = (paramInt1 + paramInt2);
    this.d = paramInt1;
    this.g = (-paramInt1);
    this.e = null;
  }

  private int A()
  {
    return this.g + this.d;
  }

  private byte B()
  {
    if (this.d == this.b)
      a(true);
    byte[] arrayOfByte = this.a;
    int i1 = this.d;
    this.d = (i1 + 1);
    return arrayOfByte[i1];
  }

  public static int a(int paramInt, InputStream paramInputStream)
  {
    int i4;
    if ((paramInt & 0x80) == 0)
      i4 = paramInt;
    while (true)
    {
      return i4;
      int i1 = paramInt & 0x7F;
      for (int i2 = 7; ; i2 += 7)
      {
        if (i2 >= 32)
          break label78;
        int i5 = paramInputStream.read();
        if (i5 == -1)
          throw es.a();
        i1 |= (i5 & 0x7F) << i2;
        if ((i5 & 0x80) == 0)
        {
          i4 = i1;
          break;
        }
      }
      label78: int i3;
      do
      {
        i2 += 7;
        if (i2 >= 64)
          break;
        i3 = paramInputStream.read();
        if (i3 == -1)
          throw es.a();
      }
      while ((i3 & 0x80) != 0);
      i4 = i1;
    }
    throw es.c();
  }

  private static long a(long paramLong)
  {
    return paramLong >>> 1 ^ -(1L & paramLong);
  }

  public static m a(InputStream paramInputStream)
  {
    return new m(paramInputStream);
  }

  public static m a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static m a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    m localm = new m(paramArrayOfByte, paramInt1, paramInt2);
    try
    {
      localm.c(paramInt2);
      return localm;
    }
    catch (es locales)
    {
      throw new IllegalArgumentException(locales);
    }
  }

  private void a(int paramInt, ey paramey)
  {
    a(paramInt, paramey, null);
  }

  private boolean a(boolean paramBoolean)
  {
    if (this.d < this.b)
      throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
    boolean bool;
    if (this.g + this.b == this.h)
    {
      if (paramBoolean)
        throw es.a();
      bool = false;
    }
    while (true)
    {
      return bool;
      this.g += this.b;
      this.d = 0;
      if (this.e == null);
      for (int i1 = -1; ; i1 = this.e.read(this.a))
      {
        this.b = i1;
        if ((this.b != 0) && (this.b >= -1))
          break;
        throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.b + "\nThe InputStream implementation is buggy.");
      }
      if (this.b == -1)
      {
        this.b = 0;
        if (paramBoolean)
          throw es.a();
        bool = false;
      }
      else
      {
        y();
        int i2 = this.g + this.b + this.c;
        if ((i2 > this.k) || (i2 < 0))
          throw es.h();
        bool = true;
      }
    }
  }

  private static int b(InputStream paramInputStream)
  {
    int i1 = paramInputStream.read();
    if (i1 == -1)
      throw es.a();
    return a(i1, paramInputStream);
  }

  private static int e(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }

  private int f(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Recursion limit cannot be negative: " + paramInt);
    int i1 = this.j;
    this.j = paramInt;
    return i1;
  }

  private int g(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Size limit cannot be negative: " + paramInt);
    int i1 = this.k;
    this.k = paramInt;
    return i1;
  }

  private byte[] h(int paramInt)
  {
    if (paramInt < 0)
      throw es.b();
    if (paramInt + (this.g + this.d) > this.h)
    {
      i(this.h - this.g - this.d);
      throw es.a();
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
        localObject = new byte[paramInt];
        int i7 = this.b - this.d;
        System.arraycopy(this.a, this.d, localObject, 0, i7);
        this.d = this.b;
        a(true);
        while (paramInt - i7 > this.b)
        {
          System.arraycopy(this.a, 0, localObject, i7, this.b);
          i7 += this.b;
          this.d = this.b;
          a(true);
        }
        System.arraycopy(this.a, 0, localObject, i7, paramInt - i7);
        this.d = (paramInt - i7);
      }
      else
      {
        int i1 = this.d;
        int i2 = this.b;
        this.g += this.b;
        this.d = 0;
        this.b = 0;
        int i3 = paramInt - (i2 - i1);
        ArrayList localArrayList = new ArrayList();
        while (i3 > 0)
        {
          byte[] arrayOfByte3 = new byte[Math.min(i3, 4096)];
          int i5 = 0;
          while (i5 < arrayOfByte3.length)
          {
            if (this.e == null);
            for (int i6 = -1; i6 == -1; i6 = this.e.read(arrayOfByte3, i5, arrayOfByte3.length - i5))
              throw es.a();
            this.g = (i6 + this.g);
            i5 += i6;
          }
          i3 -= arrayOfByte3.length;
          localArrayList.add(arrayOfByte3);
        }
        byte[] arrayOfByte1 = new byte[paramInt];
        int i4 = i2 - i1;
        System.arraycopy(this.a, i1, arrayOfByte1, 0, i4);
        Iterator localIterator = localArrayList.iterator();
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

  private void i(int paramInt)
  {
    if (paramInt < 0)
      throw es.b();
    if (paramInt + (this.g + this.d) > this.h)
    {
      i(this.h - this.g - this.d);
      throw es.a();
    }
    if (paramInt <= this.b - this.d);
    int i1;
    for (this.d = (paramInt + this.d); ; this.d = (paramInt - i1))
    {
      return;
      i1 = this.b - this.d;
      this.d = this.b;
      a(true);
      while (paramInt - i1 > this.b)
      {
        i1 += this.b;
        this.d = this.b;
        a(true);
      }
    }
  }

  private void w()
  {
    int i1;
    do
      i1 = a();
    while ((i1 != 0) && (b(i1)));
  }

  private void x()
  {
    this.g = (-this.d);
  }

  private void y()
  {
    this.b += this.c;
    int i1 = this.g + this.b;
    if (i1 > this.h)
    {
      this.c = (i1 - this.h);
      this.b -= this.c;
    }
    while (true)
    {
      return;
      this.c = 0;
    }
  }

  private boolean z()
  {
    if ((this.d == this.b) && (!a(false)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int a()
  {
    int i1;
    if ((this.d == this.b) && (!a(false)))
    {
      i1 = 1;
      if (i1 == 0)
        break label39;
      this.f = 0;
    }
    for (int i2 = 0; ; i2 = this.f)
    {
      return i2;
      i1 = 0;
      break;
      label39: this.f = r();
      if (go.b(this.f) == 0)
        throw es.d();
    }
  }

  public final void a(int paramInt)
  {
    if (this.f != paramInt)
      throw es.e();
  }

  public final void a(int paramInt, ey paramey, df paramdf)
  {
    if (this.i >= this.j)
      throw es.g();
    this.i = (1 + this.i);
    paramey.c(this, paramdf);
    a(go.a(paramInt, 4));
    this.i -= 1;
  }

  public final void a(ey paramey, df paramdf)
  {
    int i1 = r();
    if (this.i >= this.j)
      throw es.g();
    int i2 = c(i1);
    this.i = (1 + this.i);
    paramey.c(this, paramdf);
    a(0);
    this.i -= 1;
    d(i2);
  }

  public final double b()
  {
    return Double.longBitsToDouble(u());
  }

  public final boolean b(int paramInt)
  {
    boolean bool;
    switch (go.a(paramInt))
    {
    default:
      throw es.f();
    case 0:
      r();
      bool = true;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return bool;
      u();
      bool = true;
      continue;
      i(r());
      bool = true;
      continue;
      int i1;
      do
        i1 = a();
      while ((i1 != 0) && (b(i1)));
      a(go.a(go.b(paramInt), 4));
      bool = true;
      continue;
      bool = false;
      continue;
      t();
      bool = true;
    }
  }

  public final float c()
  {
    return Float.intBitsToFloat(t());
  }

  public final int c(int paramInt)
  {
    if (paramInt < 0)
      throw es.b();
    int i1 = paramInt + (this.g + this.d);
    int i2 = this.h;
    if (i1 > i2)
      throw es.a();
    this.h = i1;
    y();
    return i2;
  }

  public final long d()
  {
    return s();
  }

  public final void d(int paramInt)
  {
    this.h = paramInt;
    y();
  }

  public final long e()
  {
    return s();
  }

  public final int f()
  {
    return r();
  }

  public final long g()
  {
    return u();
  }

  public final int h()
  {
    return t();
  }

  public final boolean i()
  {
    if (r() != 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String j()
  {
    int i1 = r();
    String str2;
    if ((i1 <= this.b - this.d) && (i1 > 0))
    {
      str2 = new String(this.a, this.d, i1, "UTF-8");
      this.d = (i1 + this.d);
    }
    for (String str1 = str2; ; str1 = new String(h(i1), "UTF-8"))
      return str1;
  }

  public final i k()
  {
    int i1 = r();
    Object localObject;
    if (i1 == 0)
      localObject = i.a;
    while (true)
    {
      return localObject;
      if ((i1 <= this.b - this.d) && (i1 > 0))
      {
        i locali = i.a(this.a, this.d, i1);
        this.d = (i1 + this.d);
        localObject = locali;
      }
      else
      {
        localObject = i.a(h(i1));
      }
    }
  }

  public final int l()
  {
    return r();
  }

  public final int m()
  {
    return r();
  }

  public final int n()
  {
    return t();
  }

  public final long o()
  {
    return u();
  }

  public final int p()
  {
    int i1 = r();
    return i1 >>> 1 ^ -(i1 & 0x1);
  }

  public final long q()
  {
    long l1 = s();
    return l1 >>> 1 ^ -(l1 & 1L);
  }

  public final int r()
  {
    int i1 = B();
    if (i1 >= 0);
    int i9;
    do
    {
      int i6;
      int i7;
      while (true)
      {
        return i1;
        int i2 = i1 & 0x7F;
        int i3 = B();
        if (i3 >= 0)
        {
          i1 = i2 | i3 << 7;
        }
        else
        {
          int i4 = i2 | (i3 & 0x7F) << 7;
          int i5 = B();
          if (i5 >= 0)
          {
            i1 = i4 | i5 << 14;
          }
          else
          {
            i6 = i4 | (i5 & 0x7F) << 14;
            i7 = B();
            if (i7 < 0)
              break;
            i1 = i6 | i7 << 21;
          }
        }
      }
      int i8 = i6 | (i7 & 0x7F) << 21;
      i9 = B();
      i1 = i8 | i9 << 28;
    }
    while (i9 >= 0);
    for (int i10 = 0; ; i10++)
    {
      if (i10 >= 5)
        break label160;
      if (B() >= 0)
        break;
    }
    label160: throw es.c();
  }

  public final long s()
  {
    int i1 = 0;
    long l1 = 0L;
    while (i1 < 64)
    {
      int i2 = B();
      l1 |= (i2 & 0x7F) << i1;
      if ((i2 & 0x80) == 0)
        return l1;
      i1 += 7;
    }
    throw es.c();
  }

  public final int t()
  {
    int i1 = B();
    int i2 = B();
    int i3 = B();
    int i4 = B();
    return i1 & 0xFF | (i2 & 0xFF) << 8 | (i3 & 0xFF) << 16 | (i4 & 0xFF) << 24;
  }

  public final long u()
  {
    int i1 = B();
    int i2 = B();
    int i3 = B();
    int i4 = B();
    int i5 = B();
    int i6 = B();
    int i7 = B();
    int i8 = B();
    return 0xFF & i1 | (0xFF & i2) << 8 | (0xFF & i3) << 16 | (0xFF & i4) << 24 | (0xFF & i5) << 32 | (0xFF & i6) << 40 | (0xFF & i7) << 48 | (0xFF & i8) << 56;
  }

  public final int v()
  {
    if (this.h == 2147483647);
    int i1;
    for (int i2 = -1; ; i2 = this.h - i1)
    {
      return i2;
      i1 = this.g + this.d;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.m
 * JD-Core Version:    0.6.2
 */