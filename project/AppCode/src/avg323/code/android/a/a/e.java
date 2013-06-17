package android.a.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public final class e
{
  private InputStream a;
  private boolean b;
  private int c;

  public e()
  {
  }

  public e(InputStream paramInputStream, boolean paramBoolean)
  {
    a(paramInputStream, paramBoolean);
  }

  public final int a(int paramInt)
  {
    int i = 0;
    if ((paramInt < 0) || (paramInt > 4))
      throw new IllegalArgumentException();
    if (this.b)
    {
      int i1 = 8 * (paramInt - 1);
      while (i1 >= 0)
      {
        int i2 = this.a.read();
        if (i2 == -1)
          throw new EOFException();
        this.c = (1 + this.c);
        int i3 = i | i2 << i1;
        i1 -= 8;
        i = i3;
      }
    }
    int j = paramInt * 8;
    int k = 0;
    while (k != j)
    {
      int m = this.a.read();
      if (m == -1)
        throw new EOFException();
      this.c = (1 + this.c);
      int n = i | m << k;
      k += 8;
      i = n;
    }
    return i;
  }

  public final void a()
  {
    if (this.a == null);
    while (true)
    {
      return;
      try
      {
        this.a.close();
        label15: a(null, false);
      }
      catch (IOException localIOException)
      {
        break label15;
      }
    }
  }

  public final void a(InputStream paramInputStream, boolean paramBoolean)
  {
    this.a = paramInputStream;
    this.b = paramBoolean;
    this.c = 0;
  }

  public final void a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    while (paramInt2 > 0)
    {
      int i = paramInt1 + 1;
      paramArrayOfInt[paramInt1] = b();
      paramInt2--;
      paramInt1 = i;
    }
  }

  public final int[] a(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = new int[paramInt1 + 1];
    a(arrayOfInt, 0, paramInt1);
    arrayOfInt[paramInt1] = a(paramInt2);
    return arrayOfInt;
  }

  public final int b()
  {
    return a(4);
  }

  public final int[] b(int paramInt)
  {
    int[] arrayOfInt = new int[paramInt];
    a(arrayOfInt, 0, paramInt);
    return arrayOfInt;
  }

  public final void c()
  {
    c(4);
  }

  public final void c(int paramInt)
  {
    if (paramInt <= 0);
    long l;
    do
    {
      return;
      l = this.a.skip(paramInt);
      this.c = ((int)(l + this.c));
    }
    while (l == paramInt);
    throw new EOFException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.a.a.e
 * JD-Core Version:    0.6.2
 */