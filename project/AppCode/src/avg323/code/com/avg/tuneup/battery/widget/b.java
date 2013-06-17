package com.avg.tuneup.battery.widget;

import com.avg.a.d;
import com.avg.widget.model.plugin.a;

public enum b
  implements a
{
  private int k;
  private int l;
  private int m;

  static
  {
    b[] arrayOfb = new b[10];
    arrayOfb[0] = a;
    arrayOfb[1] = b;
    arrayOfb[2] = c;
    arrayOfb[3] = d;
    arrayOfb[4] = e;
    arrayOfb[5] = f;
    arrayOfb[6] = g;
    arrayOfb[7] = h;
    arrayOfb[8] = i;
    arrayOfb[9] = j;
  }

  private b(int paramInt3, int arg4, int arg5)
  {
    this.k = paramInt3;
    int i1;
    this.l = i1;
    int i2;
    this.m = i2;
  }

  public static b a(int paramInt, boolean paramBoolean)
  {
    b[] arrayOfb = a(paramBoolean);
    int i1 = arrayOfb.length;
    int i2 = 0;
    b localb;
    if (i2 < i1)
    {
      localb = arrayOfb[i2];
      if ((paramInt > localb.m) || (paramInt < localb.l));
    }
    while (true)
    {
      return localb;
      i2++;
      break;
      localb = f;
    }
  }

  private static b[] a(boolean paramBoolean)
  {
    b[] arrayOfb;
    if (paramBoolean)
    {
      arrayOfb = new b[5];
      arrayOfb[0] = j;
      arrayOfb[1] = i;
      arrayOfb[2] = h;
      arrayOfb[3] = g;
      arrayOfb[4] = f;
    }
    while (true)
    {
      return arrayOfb;
      arrayOfb = new b[5];
      arrayOfb[0] = e;
      arrayOfb[1] = d;
      arrayOfb[2] = c;
      arrayOfb[3] = b;
      arrayOfb[4] = a;
    }
  }

  public int a()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.widget.b
 * JD-Core Version:    0.6.2
 */