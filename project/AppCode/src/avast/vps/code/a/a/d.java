package a.a;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d
{
  private final byte[] a = new byte[4096];
  private int b = 0;
  private int c;
  private int d = 0;
  private final InputStream e;
  private int f;
  private int g = 0;
  private int h = 2147483647;
  private int i = 64;
  private int j = 67108864;

  private d(InputStream paramInputStream)
  {
    this.e = paramInputStream;
  }

  public static d a(InputStream paramInputStream)
  {
    return new d(paramInputStream);
  }

  private boolean a(boolean paramBoolean)
  {
    if (this.d < this.b)
      throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
    boolean bool;
    if (this.g + this.b == this.h)
    {
      if (paramBoolean)
        throw l.a();
      bool = false;
    }
    while (true)
    {
      return bool;
      this.g += this.b;
      this.d = 0;
      if (this.e == null);
      for (int k = -1; ; k = this.e.read(this.a))
      {
        this.b = k;
        if ((this.b != 0) && (this.b >= -1))
          break;
        throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.b + "\nThe InputStream implementation is buggy.");
      }
      if (this.b == -1)
      {
        this.b = 0;
        if (paramBoolean)
          throw l.a();
        bool = false;
      }
      else
      {
        h();
        int m = this.g + this.b + this.c;
        if ((m > this.j) || (m < 0))
          throw l.g();
        bool = true;
      }
    }
  }

  private void e(int paramInt)
  {
    if (paramInt < 0)
      throw l.b();
    if (paramInt + (this.g + this.d) > this.h)
    {
      e(this.h - this.g - this.d);
      throw l.a();
    }
    if (paramInt <= this.b - this.d);
    int k;
    for (this.d = (paramInt + this.d); ; this.d = (paramInt - k))
    {
      return;
      k = this.b - this.d;
      this.d = this.b;
      a(true);
      while (paramInt - k > this.b)
      {
        k += this.b;
        this.d = this.b;
        a(true);
      }
    }
  }

  private void h()
  {
    this.b += this.c;
    int k = this.g + this.b;
    if (k > this.h)
    {
      this.c = (k - this.h);
      this.b -= this.c;
    }
    while (true)
    {
      return;
      this.c = 0;
    }
  }

  private byte i()
  {
    if (this.d == this.b)
      a(true);
    byte[] arrayOfByte = this.a;
    int k = this.d;
    this.d = (k + 1);
    return arrayOfByte[k];
  }

  public final int a()
  {
    int k = 0;
    int m;
    if ((this.d == this.b) && (!a(false)))
    {
      m = 1;
      if (m == 0)
        break label39;
      this.f = 0;
    }
    while (true)
    {
      return k;
      m = 0;
      break;
      label39: this.f = f();
      if (u.b(this.f) == 0)
        throw l.d();
      k = this.f;
    }
  }

  public final void a(int paramInt)
  {
    if (this.f != paramInt)
      throw l.e();
  }

  public final long b()
  {
    int k = 0;
    long l = 0L;
    while (k < 64)
    {
      int m = i();
      l |= (m & 0x7F) << k;
      if ((m & 0x80) == 0)
        return l;
      k += 7;
    }
    throw l.c();
  }

  public final boolean b(int paramInt)
  {
    boolean bool = true;
    switch (u.a(paramInt))
    {
    default:
      throw l.f();
    case 0:
      f();
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return bool;
      i();
      i();
      i();
      i();
      i();
      i();
      i();
      i();
      continue;
      e(f());
      continue;
      int k;
      do
        k = a();
      while ((k != 0) && (b(k)));
      a(u.a(u.b(paramInt), 4));
      continue;
      bool = false;
      continue;
      i();
      i();
      i();
      i();
    }
  }

  public final int c(int paramInt)
  {
    if (paramInt < 0)
      throw l.b();
    int k = paramInt + (this.g + this.d);
    int m = this.h;
    if (k > m)
      throw l.a();
    this.h = k;
    h();
    return m;
  }

  public final c c()
  {
    int k = f();
    c localc;
    if (k == 0)
      localc = c.a;
    while (true)
    {
      return localc;
      if ((k > this.b - this.d) || (k <= 0))
        break;
      localc = c.a(this.a, this.d, k);
      this.d = (k + this.d);
    }
    if (k < 0)
      throw l.b();
    if (k + (this.g + this.d) > this.h)
    {
      e(this.h - this.g - this.d);
      throw l.a();
    }
    Object localObject;
    if (k <= this.b - this.d)
    {
      localObject = new byte[k];
      System.arraycopy(this.a, this.d, localObject, 0, k);
      this.d = (k + this.d);
    }
    while (true)
    {
      localc = c.a((byte[])localObject);
      break;
      if (k < 4096)
      {
        byte[] arrayOfByte4 = new byte[k];
        int i8 = this.b - this.d;
        System.arraycopy(this.a, this.d, arrayOfByte4, 0, i8);
        this.d = this.b;
        a(true);
        while (k - i8 > this.b)
        {
          System.arraycopy(this.a, 0, arrayOfByte4, i8, this.b);
          i8 += this.b;
          this.d = this.b;
          a(true);
        }
        System.arraycopy(this.a, 0, arrayOfByte4, i8, k - i8);
        this.d = (k - i8);
        localObject = arrayOfByte4;
      }
      else
      {
        int m = this.d;
        int n = this.b;
        this.g += this.b;
        this.d = 0;
        this.b = 0;
        int i1 = k - (n - m);
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
              throw l.a();
            this.g = (i7 + this.g);
            i5 += i7;
          }
          i6 = i2 - arrayOfByte3.length;
          localArrayList.add(arrayOfByte3);
        }
        byte[] arrayOfByte1 = new byte[k];
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

  public final int d()
  {
    return f();
  }

  public final void d(int paramInt)
  {
    this.h = paramInt;
    h();
  }

  public final int e()
  {
    int k = f();
    return k >>> 1 ^ -(k & 0x1);
  }

  public final int f()
  {
    int k = i();
    if (k >= 0);
    int i6;
    do
    {
      int i3;
      int i4;
      while (true)
      {
        return k;
        int m = k & 0x7F;
        int n = i();
        if (n >= 0)
        {
          k = m | n << 7;
        }
        else
        {
          int i1 = m | (n & 0x7F) << 7;
          int i2 = i();
          if (i2 >= 0)
          {
            k = i1 | i2 << 14;
          }
          else
          {
            i3 = i1 | (i2 & 0x7F) << 14;
            i4 = i();
            if (i4 < 0)
              break;
            k = i3 | i4 << 21;
          }
        }
      }
      int i5 = i3 | (i4 & 0x7F) << 21;
      i6 = i();
      k = i5 | i6 << 28;
    }
    while (i6 >= 0);
    for (int i7 = 0; ; i7++)
    {
      if (i7 >= 5)
        break label160;
      if (i() >= 0)
        break;
    }
    label160: throw l.c();
  }

  public final int g()
  {
    if (this.h == 2147483647);
    int k;
    for (int m = -1; ; m = this.h - k)
    {
      return m;
      k = this.g + this.d;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.d
 * JD-Core Version:    0.6.2
 */