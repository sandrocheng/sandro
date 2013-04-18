package com.ijinshan.kinghelper.firewall;

import android.content.Context;

public enum de
{
  public final int e;
  public final int f;

  static
  {
    de[] arrayOfde = new de[4];
    arrayOfde[0] = a;
    arrayOfde[1] = b;
    arrayOfde[2] = c;
    arrayOfde[3] = d;
  }

  private de(int arg3, int arg4)
  {
    int i;
    this.e = i;
    int j;
    this.f = j;
  }

  public static de a(String paramString)
  {
    Object localObject;
    if (paramString == null)
      localObject = dd.D();
    while (true)
    {
      return localObject;
      de[] arrayOfde = values();
      int i = arrayOfde.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label62;
        de localde = arrayOfde[j];
        if (dd.A().getString(localde.e).equals(paramString))
        {
          localObject = localde;
          break;
        }
      }
      label62: localObject = dd.D();
    }
  }

  public static de b(String paramString)
  {
    Object localObject;
    if (paramString == null)
      localObject = dd.D();
    while (true)
    {
      return localObject;
      de[] arrayOfde = values();
      int i = arrayOfde.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label62;
        de localde = arrayOfde[j];
        if (dd.A().getString(localde.f).equals(paramString))
        {
          localObject = localde;
          break;
        }
      }
      label62: localObject = dd.D();
    }
  }

  public static String c(String paramString)
  {
    String str;
    if (paramString == null)
      str = dd.D().b();
    while (true)
    {
      return str;
      de[] arrayOfde = values();
      int i = arrayOfde.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label68;
        de localde = arrayOfde[j];
        if (dd.A().getString(localde.e).equals(paramString))
        {
          str = localde.b();
          break;
        }
      }
      label68: str = dd.D().b();
    }
  }

  public final String a()
  {
    return dd.A().getString(this.e);
  }

  public final String b()
  {
    return dd.A().getString(this.f);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.de
 * JD-Core Version:    0.6.2
 */