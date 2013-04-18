package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class ed extends dk
  implements ef
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final ed e;
  private static final long n;
  private int f;
  private ge g;
  private gj h;
  private gy i;
  private hc k;
  private byte l = -1;
  private int m = -1;

  static
  {
    ed localed = new ed();
    e = localed;
    localed.g = ge.h();
    localed.h = gj.h();
    localed.i = gy.h();
    localed.k = hc.h();
  }

  private ed()
  {
  }

  private ed(ee paramee, byte paramByte)
  {
    super(paramee);
  }

  private ee A()
  {
    return ee.i().a(this);
  }

  private static ed a(i parami)
  {
    return ee.a((ee)ee.i().a(parami));
  }

  private static ed a(i parami, df paramdf)
  {
    return ee.a((ee)ee.i().a(parami, paramdf));
  }

  private static ed a(m paramm)
  {
    return ee.a((ee)ee.i().a(paramm));
  }

  private static ed a(m paramm, df paramdf)
  {
    return ee.a(ee.i().e(paramm, paramdf));
  }

  private static ed a(InputStream paramInputStream)
  {
    return ee.a((ee)ee.i().a(paramInputStream));
  }

  private static ed a(InputStream paramInputStream, df paramdf)
  {
    return ee.a((ee)ee.i().a(paramInputStream, paramdf));
  }

  private static ed a(byte[] paramArrayOfByte)
  {
    return ee.a((ee)ee.i().a(paramArrayOfByte));
  }

  private static ed a(byte[] paramArrayOfByte, df paramdf)
  {
    return ee.a((ee)ee.i().a(paramArrayOfByte, paramdf));
  }

  private static ee a(ed paramed)
  {
    return ee.i().a(paramed);
  }

  private static ed b(InputStream paramInputStream)
  {
    ee localee = ee.i();
    if (localee.b(paramInputStream));
    for (ed localed = ee.a(localee); ; localed = null)
      return localed;
  }

  private static ed b(InputStream paramInputStream, df paramdf)
  {
    ee localee = ee.i();
    if (localee.b(paramInputStream, paramdf));
    for (ed localed = ee.a(localee); ; localed = null)
      return localed;
  }

  private static ee b(dp paramdp)
  {
    return new ee(paramdp);
  }

  public static ed h()
  {
    return e;
  }

  public static final cj i()
  {
    return a.aN();
  }

  private static ed w()
  {
    return e;
  }

  private void x()
  {
    this.g = ge.h();
    this.h = gj.h();
    this.i = gy.h();
    this.k = hc.h();
  }

  private static ee y()
  {
    return ee.i();
  }

  private static ee z()
  {
    return ee.i();
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.b(1, this.g);
    if ((0x2 & this.f) == 2)
      paramn.b(2, this.h);
    if ((0x4 & this.f) == 4)
      paramn.b(3, this.i);
    if ((0x8 & this.f) == 8)
      paramn.b(4, this.k);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.l;
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
        this.l = 0;
        bool = false;
      }
      else if (!this.g.a())
      {
        this.l = 0;
        bool = false;
      }
      else
      {
        this.l = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.m;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.f;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.e(1, this.g);
      if ((0x2 & this.f) == 2)
        i2 += n.e(2, this.h);
      if ((0x4 & this.f) == 4)
        i2 += n.e(3, this.i);
      if ((0x8 & this.f) == 8)
        i2 += n.e(4, this.k);
      j = i2 + b_().b();
      this.m = j;
    }
  }

  protected final dv g()
  {
    return a.aO();
  }

  public final boolean j()
  {
    if ((0x1 & this.f) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.g;
  }

  public final gg l()
  {
    return this.g;
  }

  public final boolean m()
  {
    if ((0x2 & this.f) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gj n()
  {
    return this.h;
  }

  public final gl o()
  {
    return this.h;
  }

  public final boolean p()
  {
    if ((0x4 & this.f) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy q()
  {
    return this.i;
  }

  public final ha r()
  {
    return this.i;
  }

  public final boolean s()
  {
    if ((0x8 & this.f) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final hc t()
  {
    return this.k;
  }

  public final hg u()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ed
 * JD-Core Version:    0.6.2
 */