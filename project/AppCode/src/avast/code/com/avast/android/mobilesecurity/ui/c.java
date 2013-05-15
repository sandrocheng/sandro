package com.avast.android.mobilesecurity.ui;

import java.lang.reflect.Array;

public class c
{
  static c[][] c = (c[][])Array.newInstance(c.class, new int[] { 3, 3 });
  int a;
  int b;

  static
  {
    for (int i = 0; i < 3; i++)
      for (int j = 0; j < 3; j++)
        c[i][j] = new c(i, j);
  }

  private c(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2);
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public static c a(int paramInt1, int paramInt2)
  {
    try
    {
      b(paramInt1, paramInt2);
      c localc = c[paramInt1][paramInt2];
      return localc;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static void b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 > 2))
      throw new IllegalArgumentException("row must be in range 0-2");
    if ((paramInt2 < 0) || (paramInt2 > 2))
      throw new IllegalArgumentException("column must be in range 0-2");
  }

  public int a()
  {
    return this.a;
  }

  public int b()
  {
    return this.b;
  }

  public String toString()
  {
    return "(row=" + this.a + ",clmn=" + this.b + ")";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.c
 * JD-Core Version:    0.6.2
 */