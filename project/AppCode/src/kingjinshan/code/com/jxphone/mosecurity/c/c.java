package com.jxphone.mosecurity.c;

import android.content.Context;

public enum c
{
  private int h;

  static
  {
    c[] arrayOfc = new c[7];
    arrayOfc[0] = a;
    arrayOfc[1] = b;
    arrayOfc[2] = c;
    arrayOfc[3] = d;
    arrayOfc[4] = e;
    arrayOfc[5] = f;
    arrayOfc[6] = g;
  }

  private c(int arg3)
  {
    int k;
    this.h = k;
  }

  public final String a(Context paramContext)
  {
    return paramContext.getString(this.h);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.h);
    return String.format("<%d>", arrayOfObject);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.c.c
 * JD-Core Version:    0.6.2
 */