package android.a.a;

final class b
{
  private int[] a = new int[32];
  private int b;
  private int c;
  private int d;

  private final int a(int paramInt, boolean paramBoolean)
  {
    int i = -1;
    if (this.b == 0);
    label99: label108: label112: 
    while (true)
    {
      return i;
      int j = -1 + this.b;
      for (int k = this.d; ; k--)
      {
        if (k == 0)
          break label112;
        int m = this.a[j];
        j -= 2;
        while (true)
        {
          if (m == 0)
            break label108;
          if (paramBoolean)
          {
            if (this.a[j] != paramInt)
              break label99;
            i = this.a[(j + 1)];
            break;
          }
          if (this.a[(j + 1)] == paramInt)
          {
            i = this.a[j];
            break;
          }
          j -= 2;
          m--;
        }
      }
    }
  }

  private final int b(int paramInt, boolean paramBoolean)
  {
    int i = -1;
    if ((this.b == 0) || (paramInt < 0));
    while (true)
    {
      return i;
      int j = 0;
      for (int k = this.d; k != 0; k--)
      {
        int m = this.a[j];
        if (paramInt < m)
          break label66;
        paramInt -= m;
        j += 2 + m * 2;
      }
      continue;
      label66: int n = j + (1 + paramInt * 2);
      if (!paramBoolean)
        n++;
      i = this.a[n];
    }
  }

  private void e(int paramInt)
  {
    int i = this.a.length - this.b;
    if (i > paramInt);
    while (true)
    {
      return;
      int[] arrayOfInt = new int[2 * (i + this.a.length)];
      System.arraycopy(this.a, 0, arrayOfInt, 0, this.b);
      this.a = arrayOfInt;
    }
  }

  public final int a(int paramInt)
  {
    int i = this.b;
    int j = 0;
    if (i != 0)
    {
      j = 0;
      if (paramInt >= 0)
        break label19;
    }
    while (true)
    {
      return j;
      label19: if (paramInt > this.d)
        paramInt = this.d;
      int k = 0;
      while (paramInt != 0)
      {
        int m = this.a[k];
        int n = j + m;
        int i1 = k + (2 + m * 2);
        paramInt--;
        k = i1;
        j = n;
      }
    }
  }

  public final void a()
  {
    this.b = 0;
    this.c = 0;
    this.d = 0;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    if (this.d == 0)
      e();
    e(2);
    int i = -1 + this.b;
    int j = this.a[i];
    this.a[(i - 1 - j * 2)] = (j + 1);
    this.a[i] = paramInt1;
    this.a[(i + 1)] = paramInt2;
    this.a[(i + 2)] = (j + 1);
    this.b = (2 + this.b);
    this.c = (1 + this.c);
  }

  public final int b()
  {
    if (this.b == 0);
    int i;
    for (int j = 0; ; j = this.a[i])
    {
      return j;
      i = -1 + this.b;
    }
  }

  public final int b(int paramInt)
  {
    return b(paramInt, true);
  }

  public final int c(int paramInt)
  {
    return b(paramInt, false);
  }

  public final boolean c()
  {
    int i = this.b;
    boolean bool = false;
    if (i == 0);
    while (true)
    {
      return bool;
      int j = -1 + this.b;
      int k = this.a[j];
      bool = false;
      if (k != 0)
      {
        int m = k - 1;
        int n = j - 2;
        this.a[n] = m;
        int i1 = n - (1 + m * 2);
        this.a[i1] = m;
        this.b = (-2 + this.b);
        this.c = (-1 + this.c);
        bool = true;
      }
    }
  }

  public final int d()
  {
    return this.d;
  }

  public final int d(int paramInt)
  {
    return a(paramInt, false);
  }

  public final void e()
  {
    e(2);
    int i = this.b;
    this.a[i] = 0;
    this.a[(i + 1)] = 0;
    this.b = (2 + this.b);
    this.d = (1 + this.d);
  }

  public final void f()
  {
    if (this.b == 0);
    while (true)
    {
      return;
      int i = -1 + this.b;
      int j = this.a[i];
      if (i - 1 - j * 2 != 0)
      {
        this.b -= 2 + j * 2;
        this.c -= j;
        this.d = (-1 + this.d);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.a.a.b
 * JD-Core Version:    0.6.2
 */