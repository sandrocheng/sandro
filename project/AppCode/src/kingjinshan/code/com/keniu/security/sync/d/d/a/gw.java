package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class gw extends dk
  implements hb
{
  public static final int a = 1;
  public static final int b = 2;
  private static final gw c;
  private static final long i;
  private int d;
  private long e;
  private long f;
  private byte g = -1;
  private int h = -1;

  static
  {
    gw localgw = new gw();
    c = localgw;
    localgw.e = 0L;
    localgw.f = 0L;
  }

  private gw()
  {
  }

  private gw(gx paramgx, byte paramByte)
  {
    super(paramgx);
  }

  private static gw a(i parami)
  {
    return gx.a((gx)gx.i().a(parami));
  }

  private static gw a(i parami, df paramdf)
  {
    return gx.a((gx)gx.i().a(parami, paramdf));
  }

  private static gw a(m paramm)
  {
    return gx.a((gx)gx.i().a(paramm));
  }

  private static gw a(m paramm, df paramdf)
  {
    return gx.a(gx.i().e(paramm, paramdf));
  }

  private static gw a(InputStream paramInputStream)
  {
    return gx.a((gx)gx.i().a(paramInputStream));
  }

  private static gw a(InputStream paramInputStream, df paramdf)
  {
    return gx.a((gx)gx.i().a(paramInputStream, paramdf));
  }

  private static gw a(byte[] paramArrayOfByte)
  {
    return gx.a((gx)gx.i().a(paramArrayOfByte));
  }

  private static gw a(byte[] paramArrayOfByte, df paramdf)
  {
    return gx.a((gx)gx.i().a(paramArrayOfByte, paramdf));
  }

  private static gx a(gw paramgw)
  {
    return gx.i().a(paramgw);
  }

  private static gw b(InputStream paramInputStream)
  {
    gx localgx = gx.i();
    if (localgx.b(paramInputStream));
    for (gw localgw = gx.a(localgx); ; localgw = null)
      return localgw;
  }

  private static gw b(InputStream paramInputStream, df paramdf)
  {
    gx localgx = gx.i();
    if (localgx.b(paramInputStream, paramdf));
    for (gw localgw = gx.a(localgx); ; localgw = null)
      return localgw;
  }

  private static gx b(dp paramdp)
  {
    return new gx(paramdp);
  }

  public static gw h()
  {
    return c;
  }

  public static final cj i()
  {
    return gc.j();
  }

  private static gw o()
  {
    return c;
  }

  private void p()
  {
    this.e = 0L;
    this.f = 0L;
  }

  private static gx q()
  {
    return gx.i();
  }

  private static gx r()
  {
    return gx.i();
  }

  private gx s()
  {
    return gx.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.d) == 1)
      paramn.b(1, this.e);
    if ((0x2 & this.d) == 2)
      paramn.b(2, this.f);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.g;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      this.g = 1;
      bool = true;
    }
  }

  public final int b()
  {
    int j = this.h;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0x1 & this.d;
      int m = 0;
      if (k == 1)
        m = 0 + n.e(1, this.e);
      if ((0x2 & this.d) == 2)
        m += n.e(2, this.f);
      j = m + b_().b();
      this.h = j;
    }
  }

  protected final dv g()
  {
    return gc.k();
  }

  public final boolean j()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long k()
  {
    return this.e;
  }

  public final boolean l()
  {
    if ((0x2 & this.d) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long m()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gw
 * JD-Core Version:    0.6.2
 */