package com.avg.tuneup.traffic.widget;

import com.avg.a.d;

public enum a
  implements com.avg.widget.model.plugin.a
{
  private final int j;
  private final boolean k;
  private final int l;
  private final int m;

  static
  {
    a[] arrayOfa = new a[9];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    arrayOfa[3] = d;
    arrayOfa[4] = e;
    arrayOfa[5] = f;
    arrayOfa[6] = g;
    arrayOfa[7] = h;
    arrayOfa[8] = i;
  }

  private a(int paramInt2, boolean paramInt3, int arg5, int arg6)
  {
    this.j = paramInt2;
    this.k = paramInt3;
    int i1;
    this.l = i1;
    int i2;
    this.m = i2;
  }

  public static a a(boolean paramBoolean, double paramDouble)
  {
    a locala;
    if (!paramBoolean)
      locala = i;
    while (true)
    {
      return locala;
      if (paramDouble >= 100.0D)
      {
        locala = h;
      }
      else
      {
        a[] arrayOfa = values();
        int i1 = arrayOfa.length;
        for (int i2 = 0; ; i2++)
        {
          if (i2 >= i1)
            break label80;
          locala = arrayOfa[i2];
          if ((paramDouble >= locala.l) && (paramDouble <= locala.m))
            break;
        }
        label80: locala = i;
      }
    }
  }

  public int a()
  {
    return this.j;
  }

  public boolean b()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.widget.a
 * JD-Core Version:    0.6.2
 */