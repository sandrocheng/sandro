package com.keniu.security.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public final class l
{
  private InputStream a;
  private boolean b;
  private int c;

  public l()
  {
  }

  public l(InputStream paramInputStream)
  {
    a(paramInputStream);
  }

  private void a(InputStream paramInputStream)
  {
    this.a = paramInputStream;
    this.b = false;
    this.c = 0;
  }

  private void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  private void a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    int k;
    for (int j = paramInt1; i > 0; j = k)
    {
      k = j + 1;
      paramArrayOfInt[j] = b(4);
      i--;
    }
  }

  private int b(int paramInt)
  {
    int i = 0;
    if ((paramInt < 0) || (paramInt > 4))
      throw new IllegalArgumentException();
    if (this.b)
      for (int i1 = 8 * (paramInt - 1); i1 >= 0; i1 -= 8)
      {
        int i2 = this.a.read();
        if (i2 == -1)
          throw new EOFException();
        this.c = (1 + this.c);
        i |= i2 << i1;
      }
    int k;
    for (int m = i; ; m = k)
    {
      return m;
      int j = paramInt * 8;
      k = 0;
      while (i != j)
      {
        int n = this.a.read();
        if (n == -1)
          throw new EOFException();
        this.c = (1 + this.c);
        k |= n << i;
        i += 8;
      }
    }
  }

  private void b()
  {
    if (this.a == null);
    while (true)
    {
      return;
      try
      {
        this.a.close();
        label15: a(null);
      }
      catch (IOException localIOException)
      {
        break label15;
      }
    }
  }

  private InputStream c()
  {
    return this.a;
  }

  private byte[] c(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = this.a.read(arrayOfByte);
    this.c = (i + this.c);
    if (i != paramInt)
      throw new EOFException();
    return arrayOfByte;
  }

  private boolean d()
  {
    return this.b;
  }

  private int e()
  {
    return b(1);
  }

  private int f()
  {
    return b(2);
  }

  private void g()
  {
    long l = this.a.skip(4L);
    this.c = ((int)(l + this.c));
    if (l != 4L)
      throw new EOFException();
  }

  private void h()
  {
    long l = this.a.skip(4L);
    this.c = ((int)(l + this.c));
    if (l != 4L)
      throw new EOFException();
  }

  private int i()
  {
    return this.a.available();
  }

  private int j()
  {
    return this.c;
  }

  public final int a()
  {
    return b(4);
  }

  public final int[] a(int paramInt)
  {
    int[] arrayOfInt = new int[paramInt];
    int i = 0;
    int j = paramInt;
    while (j > 0)
    {
      int k = i + 1;
      arrayOfInt[i] = b(4);
      j--;
      i = k;
    }
    return arrayOfInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.l
 * JD-Core Version:    0.6.2
 */