package android.support.v4.c;

public class c
{
  private static final Object a = new Object();
  private boolean b = false;
  private int[] c;
  private Object[] d;
  private int e;

  public c()
  {
    this(10);
  }

  public c(int paramInt)
  {
    int i = g(paramInt);
    this.c = new int[i];
    this.d = new Object[i];
    this.e = 0;
  }

  private static int a(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt1 + paramInt2;
    int j = paramInt1 - 1;
    int k = i;
    while (k - j > 1)
    {
      int m = (k + j) / 2;
      if (paramArrayOfInt[m] < paramInt3)
        j = m;
      else
        k = m;
    }
    if (k == paramInt1 + paramInt2)
      k = 0xFFFFFFFF ^ paramInt1 + paramInt2;
    while (true)
    {
      return k;
      if (paramArrayOfInt[k] != paramInt3)
        k ^= -1;
    }
  }

  private void c()
  {
    int i = this.e;
    int[] arrayOfInt = this.c;
    Object[] arrayOfObject = this.d;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      Object localObject = arrayOfObject[j];
      if (localObject != a)
      {
        if (j != k)
        {
          arrayOfInt[k] = arrayOfInt[j];
          arrayOfObject[k] = localObject;
        }
        k++;
      }
      j++;
    }
    this.b = false;
    this.e = k;
  }

  static int f(int paramInt)
  {
    for (int i = 4; ; i++)
      if (i < 32)
      {
        if (paramInt <= -12 + (1 << i))
          paramInt = -12 + (1 << i);
      }
      else
        return paramInt;
  }

  static int g(int paramInt)
  {
    return f(paramInt * 4) / 4;
  }

  public int a()
  {
    if (this.b)
      c();
    return this.e;
  }

  public Object a(int paramInt)
  {
    return a(paramInt, null);
  }

  public Object a(int paramInt, Object paramObject)
  {
    int i = a(this.c, 0, this.e, paramInt);
    if ((i < 0) || (this.d[i] == a));
    while (true)
    {
      return paramObject;
      paramObject = this.d[i];
    }
  }

  public void b()
  {
    int i = this.e;
    Object[] arrayOfObject = this.d;
    for (int j = 0; j < i; j++)
      arrayOfObject[j] = null;
    this.e = 0;
    this.b = false;
  }

  public void b(int paramInt)
  {
    int i = a(this.c, 0, this.e, paramInt);
    if ((i >= 0) && (this.d[i] != a))
    {
      this.d[i] = a;
      this.b = true;
    }
  }

  public void b(int paramInt, Object paramObject)
  {
    int i = a(this.c, 0, this.e, paramInt);
    if (i >= 0)
      this.d[i] = paramObject;
    while (true)
    {
      return;
      int j = i ^ 0xFFFFFFFF;
      if ((j < this.e) && (this.d[j] == a))
      {
        this.c[j] = paramInt;
        this.d[j] = paramObject;
      }
      else
      {
        if ((this.b) && (this.e >= this.c.length))
        {
          c();
          j = 0xFFFFFFFF ^ a(this.c, 0, this.e, paramInt);
        }
        if (this.e >= this.c.length)
        {
          int k = g(1 + this.e);
          int[] arrayOfInt = new int[k];
          Object[] arrayOfObject = new Object[k];
          System.arraycopy(this.c, 0, arrayOfInt, 0, this.c.length);
          System.arraycopy(this.d, 0, arrayOfObject, 0, this.d.length);
          this.c = arrayOfInt;
          this.d = arrayOfObject;
        }
        if (this.e - j != 0)
        {
          System.arraycopy(this.c, j, this.c, j + 1, this.e - j);
          System.arraycopy(this.d, j, this.d, j + 1, this.e - j);
        }
        this.c[j] = paramInt;
        this.d[j] = paramObject;
        this.e = (1 + this.e);
      }
    }
  }

  public void c(int paramInt)
  {
    b(paramInt);
  }

  public int d(int paramInt)
  {
    if (this.b)
      c();
    return this.c[paramInt];
  }

  public Object e(int paramInt)
  {
    if (this.b)
      c();
    return this.d[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.c.c
 * JD-Core Version:    0.6.2
 */