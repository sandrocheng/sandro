package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class di extends com.b.a.dk
  implements dk
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final di d;
  private static final long l;
  private int e;
  private ge f;
  private gn g;
  private int h;
  private byte i = -1;
  private int k = -1;

  static
  {
    di localdi = new di();
    d = localdi;
    localdi.f = ge.h();
    localdi.g = gn.h();
    localdi.h = 0;
  }

  private di()
  {
  }

  private di(dj paramdj, byte paramByte)
  {
    super(paramdj);
  }

  private static di a(i parami)
  {
    return dj.a((dj)dj.s().a(parami));
  }

  private static di a(i parami, df paramdf)
  {
    return dj.a((dj)dj.s().a(parami, paramdf));
  }

  private static di a(m paramm)
  {
    return dj.a((dj)dj.s().a(paramm));
  }

  private static di a(m paramm, df paramdf)
  {
    return dj.a(dj.s().e(paramm, paramdf));
  }

  private static di a(InputStream paramInputStream)
  {
    return dj.a((dj)dj.s().a(paramInputStream));
  }

  private static di a(InputStream paramInputStream, df paramdf)
  {
    return dj.a((dj)dj.s().a(paramInputStream, paramdf));
  }

  private static di a(byte[] paramArrayOfByte)
  {
    return dj.a((dj)dj.s().a(paramArrayOfByte));
  }

  private static di a(byte[] paramArrayOfByte, df paramdf)
  {
    return dj.a((dj)dj.s().a(paramArrayOfByte, paramdf));
  }

  private static dj a(di paramdi)
  {
    return dj.s().a(paramdi);
  }

  private static di b(InputStream paramInputStream)
  {
    dj localdj = dj.s();
    if (localdj.b(paramInputStream));
    for (di localdi = dj.a(localdj); ; localdi = null)
      return localdi;
  }

  private static di b(InputStream paramInputStream, df paramdf)
  {
    dj localdj = dj.s();
    if (localdj.b(paramInputStream, paramdf));
    for (di localdi = dj.a(localdj); ; localdi = null)
      return localdi;
  }

  private static dj b(dp paramdp)
  {
    return new dj(paramdp);
  }

  public static di h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.ad();
  }

  public static dj r()
  {
    return dj.s();
  }

  private static di t()
  {
    return d;
  }

  private void u()
  {
    this.f = ge.h();
    this.g = gn.h();
    this.h = 0;
  }

  private static dj v()
  {
    return dj.s();
  }

  private dj w()
  {
    return dj.s().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.b(1, this.f);
    if ((0x2 & this.e) == 2)
      paramn.b(2, this.g);
    if ((0x4 & this.e) == 4)
      paramn.a(3, this.h);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.i;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (!j())
      {
        this.i = 0;
        bool = false;
      }
      else if (!this.f.a())
      {
        this.i = 0;
        bool = false;
      }
      else if ((m()) && (!this.g.a()))
      {
        this.i = 0;
        bool = false;
      }
      else
      {
        this.i = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.k;
    if (j != -1);
    while (true)
    {
      return j;
      int m = 0x1 & this.e;
      int n = 0;
      if (m == 1)
        n = 0 + n.e(1, this.f);
      if ((0x2 & this.e) == 2)
        n += n.e(2, this.g);
      if ((0x4 & this.e) == 4)
        n += n.d(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return a.ae();
  }

  public final boolean j()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.f;
  }

  public final gg l()
  {
    return this.f;
  }

  public final boolean m()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn n()
  {
    return this.g;
  }

  public final gp o()
  {
    return this.g;
  }

  public final boolean p()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.di
 * JD-Core Version:    0.6.2
 */