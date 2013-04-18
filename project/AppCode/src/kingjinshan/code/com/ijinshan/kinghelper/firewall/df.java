package com.ijinshan.kinghelper.firewall;

import android.content.Context;

public enum df
{
  public final int h;
  public final int i;

  static
  {
    df[] arrayOfdf = new df[7];
    arrayOfdf[0] = a;
    arrayOfdf[1] = b;
    arrayOfdf[2] = c;
    arrayOfdf[3] = d;
    arrayOfdf[4] = e;
    arrayOfdf[5] = f;
    arrayOfdf[6] = g;
  }

  private df(int arg3, int arg4)
  {
    int k;
    this.h = k;
    int m;
    this.i = m;
  }

  public static df a(String paramString)
  {
    df[] arrayOfdf = values();
    int k = arrayOfdf.length;
    int m = 0;
    df localdf2;
    if (m < k)
    {
      localdf2 = arrayOfdf[m];
      if (!dd.A().getString(localdf2.i).equals(paramString));
    }
    for (df localdf1 = localdf2; ; localdf1 = dd.C())
    {
      return localdf1;
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
 * Qualified Name:     com.ijinshan.kinghelper.firewall.df
 * JD-Core Version:    0.6.2
 */