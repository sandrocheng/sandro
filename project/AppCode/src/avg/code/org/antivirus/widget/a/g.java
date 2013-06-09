package org.antivirus.widget.a;

public enum g
{
  private final int j;
  private final boolean k;
  private final int l;
  private final int m;

  static
  {
    g[] arrayOfg = new g[9];
    arrayOfg[0] = a;
    arrayOfg[1] = b;
    arrayOfg[2] = c;
    arrayOfg[3] = d;
    arrayOfg[4] = e;
    arrayOfg[5] = f;
    arrayOfg[6] = g;
    arrayOfg[7] = h;
    arrayOfg[8] = i;
  }

  private g(int paramInt2, boolean paramInt3, int arg5, int arg6)
  {
    this.j = paramInt2;
    this.k = paramInt3;
    int i1;
    this.l = i1;
    int i2;
    this.m = i2;
  }

  public static g a(boolean paramBoolean, double paramDouble)
  {
    g localg;
    if (!paramBoolean)
      localg = i;
    while (true)
    {
      return localg;
      if (paramDouble >= 100.0D)
      {
        localg = h;
      }
      else
      {
        g[] arrayOfg = values();
        int i1 = arrayOfg.length;
        for (int i2 = 0; ; i2++)
        {
          if (i2 >= i1)
            break label80;
          localg = arrayOfg[i2];
          if ((paramDouble >= localg.l) && (paramDouble <= localg.m))
            break;
        }
        label80: localg = i;
      }
    }
  }

  public final int a()
  {
    return this.j;
  }

  public final boolean b()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.g
 * JD-Core Version:    0.6.2
 */