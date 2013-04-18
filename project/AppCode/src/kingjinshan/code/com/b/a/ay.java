package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class ay extends dk
  implements ba
{
  public static final int a = 1;
  private static final ay b;
  private static final long f;
  private List c;
  private byte d = -1;
  private int e = -1;

  static
  {
    ay localay = new ay();
    b = localay;
    localay.c = Collections.emptyList();
  }

  private ay()
  {
  }

  private ay(az paramaz, byte paramByte)
  {
    super(paramaz);
  }

  private static ay a(i parami)
  {
    return az.a((az)az.k().a(parami));
  }

  private static ay a(i parami, df paramdf)
  {
    return az.a((az)az.k().a(parami, paramdf));
  }

  private static ay a(m paramm)
  {
    return az.a((az)az.k().a(paramm));
  }

  private static ay a(m paramm, df paramdf)
  {
    return az.a(az.k().e(paramm, paramdf));
  }

  private static ay a(InputStream paramInputStream)
  {
    return az.a((az)az.k().a(paramInputStream));
  }

  private static ay a(InputStream paramInputStream, df paramdf)
  {
    return az.a((az)az.k().a(paramInputStream, paramdf));
  }

  private static ay a(byte[] paramArrayOfByte)
  {
    return az.a((az)az.k().a(paramArrayOfByte));
  }

  private static ay a(byte[] paramArrayOfByte, df paramdf)
  {
    return az.a((az)az.k().a(paramArrayOfByte, paramdf));
  }

  private static ay b(InputStream paramInputStream)
  {
    az localaz = az.k();
    if (localaz.b(paramInputStream));
    for (ay localay = az.a(localaz); ; localay = null)
      return localay;
  }

  private static ay b(InputStream paramInputStream, df paramdf)
  {
    az localaz = az.k();
    if (localaz.b(paramInputStream, paramdf));
    for (ay localay = az.a(localaz); ; localay = null)
      return localay;
  }

  private static az b(ay paramay)
  {
    return az.k().a(paramay);
  }

  private static az b(dp paramdp)
  {
    return new az(paramdp);
  }

  public static ay e()
  {
    return b;
  }

  public static final cj f()
  {
    return p.b();
  }

  private static ay k()
  {
    return b;
  }

  private void l()
  {
    this.c = Collections.emptyList();
  }

  private static az m()
  {
    return az.k();
  }

  private static az n()
  {
    return az.k();
  }

  private az o()
  {
    return az.k().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final av a(int paramInt)
  {
    return (av)this.c.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    for (int i = 0; i < this.c.size(); i++)
      paramn.b(1, (ex)this.c.get(i));
    b_().a(paramn);
  }

  public final boolean a()
  {
    int i = this.d;
    boolean bool;
    if (i != -1)
      if (i == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      for (int j = 0; ; j++)
      {
        if (j >= j())
          break label61;
        if (!a(j).a())
        {
          this.d = 0;
          bool = false;
          break;
        }
      }
      label61: this.d = 1;
      bool = true;
    }
  }

  public final int b()
  {
    int i = 0;
    int j = this.e;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0;
      while (k < this.c.size())
      {
        int m = i + n.e(1, (ex)this.c.get(k));
        k++;
        i = m;
      }
      j = i + b_().b();
      this.e = j;
    }
  }

  public final ax b(int paramInt)
  {
    return (ax)this.c.get(paramInt);
  }

  protected final dv g()
  {
    return p.c();
  }

  public final List i()
  {
    return this.c;
  }

  public final int j()
  {
    return this.c.size();
  }

  public final List s_()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ay
 * JD-Core Version:    0.6.2
 */