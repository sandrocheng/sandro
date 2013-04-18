package com.ijinshan.kinghelper.firewall;

import android.content.Context;

public enum dg
{
  public final int h;
  public final int i;

  static
  {
    dg[] arrayOfdg = new dg[7];
    arrayOfdg[0] = a;
    arrayOfdg[1] = b;
    arrayOfdg[2] = c;
    arrayOfdg[3] = d;
    arrayOfdg[4] = e;
    arrayOfdg[5] = f;
    arrayOfdg[6] = g;
  }

  private dg(int arg3, int arg4)
  {
    int k;
    this.h = k;
    int m;
    this.i = m;
  }

  public static dg a(String paramString)
  {
    dg[] arrayOfdg = values();
    int k = arrayOfdg.length;
    int m = 0;
    dg localdg2;
    if (m < k)
    {
      localdg2 = arrayOfdg[m];
      if (!dd.A().getString(localdg2.i).equals(paramString));
    }
    for (dg localdg1 = localdg2; ; localdg1 = dd.B())
    {
      return localdg1;
      m++;
      break;
    }
  }

  public final String a()
  {
    return dd.A().getString(this.h);
  }

  public final String b()
  {
    return dd.A().getString(this.i);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dg
 * JD-Core Version:    0.6.2
 */