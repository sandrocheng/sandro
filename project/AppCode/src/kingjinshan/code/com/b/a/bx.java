package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class bx extends dk
  implements bz
{
  public static final int a = 1;
  public static final int b = 2;
  private static final bx c;
  private static final long k;
  private List d;
  private int e = -1;
  private List f;
  private int g = -1;
  private byte h = -1;
  private int i = -1;

  static
  {
    bx localbx = new bx();
    c = localbx;
    localbx.d = Collections.emptyList();
    localbx.f = Collections.emptyList();
  }

  private bx()
  {
  }

  private bx(by paramby, byte paramByte)
  {
    super(paramby);
  }

  private static bx a(i parami)
  {
    return by.a((by)by.n().a(parami));
  }

  private static bx a(i parami, df paramdf)
  {
    return by.a((by)by.n().a(parami, paramdf));
  }

  private static bx a(m paramm)
  {
    return by.a((by)by.n().a(paramm));
  }

  private static bx a(m paramm, df paramdf)
  {
    return by.a(by.n().e(paramm, paramdf));
  }

  private static bx a(InputStream paramInputStream)
  {
    return by.a((by)by.n().a(paramInputStream));
  }

  private static bx a(InputStream paramInputStream, df paramdf)
  {
    return by.a((by)by.n().a(paramInputStream, paramdf));
  }

  private static bx a(byte[] paramArrayOfByte)
  {
    return by.a((by)by.n().a(paramArrayOfByte));
  }

  private static bx a(byte[] paramArrayOfByte, df paramdf)
  {
    return by.a((by)by.n().a(paramArrayOfByte, paramdf));
  }

  private static bx b(InputStream paramInputStream)
  {
    by localby = by.n();
    if (localby.b(paramInputStream));
    for (bx localbx = by.a(localby); ; localbx = null)
      return localbx;
  }

  private static bx b(InputStream paramInputStream, df paramdf)
  {
    by localby = by.n();
    if (localby.b(paramInputStream, paramdf));
    for (bx localbx = by.a(localby); ; localbx = null)
      return localbx;
  }

  private static by b(dp paramdp)
  {
    return new by(paramdp);
  }

  private static by c(bx parambx)
  {
    return by.n().a(parambx);
  }

  public static bx e()
  {
    return c;
  }

  public static final cj f()
  {
    return p.N();
  }

  public static by l()
  {
    return by.n();
  }

  private static bx m()
  {
    return c;
  }

  private void n()
  {
    this.d = Collections.emptyList();
    this.f = Collections.emptyList();
  }

  private static by o()
  {
    return by.n();
  }

  private by p()
  {
    return by.n().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final List E_()
  {
    return this.d;
  }

  public final int a(int paramInt)
  {
    return ((Integer)this.d.get(paramInt)).intValue();
  }

  public final void a(n paramn)
  {
    b();
    if (this.d.size() > 0)
    {
      paramn.q(10);
      paramn.q(this.e);
    }
    for (int j = 0; j < this.d.size(); j++)
      paramn.c(((Integer)this.d.get(j)).intValue());
    if (this.f.size() > 0)
    {
      paramn.q(18);
      paramn.q(this.g);
    }
    for (int m = 0; m < this.f.size(); m++)
      paramn.c(((Integer)this.f.get(m)).intValue());
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.h;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      this.h = 1;
      bool = true;
    }
  }

  public final int b()
  {
    int j = 0;
    int m = this.i;
    if (m != -1)
      return m;
    int n = 0;
    int i7;
    for (int i1 = 0; n < this.d.size(); i1 = i7)
    {
      i7 = i1 + n.l(((Integer)this.d.get(n)).intValue());
      n++;
    }
    int i2 = i1 + 0;
    if (!this.d.isEmpty());
    for (int i3 = i2 + 1 + n.l(i1); ; i3 = i2)
    {
      this.e = i1;
      int i4 = 0;
      while (i4 < this.f.size())
      {
        int i6 = j + n.l(((Integer)this.f.get(i4)).intValue());
        i4++;
        j = i6;
      }
      int i5 = i3 + j;
      if (!this.f.isEmpty())
        i5 = i5 + 1 + n.l(j);
      this.g = j;
      m = i5 + b_().b();
      this.i = m;
      break;
    }
  }

  public final int b(int paramInt)
  {
    return ((Integer)this.f.get(paramInt)).intValue();
  }

  protected final dv g()
  {
    return p.O();
  }

  public final int i()
  {
    return this.d.size();
  }

  public final List j()
  {
    return this.f;
  }

  public final int k()
  {
    return this.f.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bx
 * JD-Core Version:    0.6.2
 */