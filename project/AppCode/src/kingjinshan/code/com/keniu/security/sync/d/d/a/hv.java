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

public final class hv extends dk
  implements hx
{
  public static final int a = 1;
  public static final int b = 2;
  private static final hv c;
  private static final long i;
  private int d;
  private gq e;
  private int f;
  private byte g = -1;
  private int h = -1;

  static
  {
    hv localhv = new hv();
    c = localhv;
    localhv.e = gq.h();
    localhv.f = 0;
  }

  private hv()
  {
  }

  private hv(hw paramhw, byte paramByte)
  {
    super(paramhw);
  }

  private static hv a(i parami)
  {
    return hw.a((hw)hw.i().a(parami));
  }

  private static hv a(i parami, df paramdf)
  {
    return hw.a((hw)hw.i().a(parami, paramdf));
  }

  private static hv a(m paramm)
  {
    return hw.a((hw)hw.i().a(paramm));
  }

  private static hv a(m paramm, df paramdf)
  {
    return hw.a(hw.i().e(paramm, paramdf));
  }

  private static hv a(InputStream paramInputStream)
  {
    return hw.a((hw)hw.i().a(paramInputStream));
  }

  private static hv a(InputStream paramInputStream, df paramdf)
  {
    return hw.a((hw)hw.i().a(paramInputStream, paramdf));
  }

  private static hv a(byte[] paramArrayOfByte)
  {
    return hw.a((hw)hw.i().a(paramArrayOfByte));
  }

  private static hv a(byte[] paramArrayOfByte, df paramdf)
  {
    return hw.a((hw)hw.i().a(paramArrayOfByte, paramdf));
  }

  private static hw a(hv paramhv)
  {
    return hw.i().a(paramhv);
  }

  private static hv b(InputStream paramInputStream)
  {
    hw localhw = hw.i();
    if (localhw.b(paramInputStream));
    for (hv localhv = hw.a(localhw); ; localhv = null)
      return localhv;
  }

  private static hv b(InputStream paramInputStream, df paramdf)
  {
    hw localhw = hw.i();
    if (localhw.b(paramInputStream, paramdf));
    for (hv localhv = hw.a(localhw); ; localhv = null)
      return localhv;
  }

  private static hw b(dp paramdp)
  {
    return new hw(paramdp);
  }

  public static hv h()
  {
    return c;
  }

  public static final cj i()
  {
    return hh.n();
  }

  private static hv p()
  {
    return c;
  }

  private void q()
  {
    this.e = gq.h();
    this.f = 0;
  }

  private static hw r()
  {
    return hw.i();
  }

  private static hw s()
  {
    return hw.i();
  }

  private hw t()
  {
    return hw.i().a(this);
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
      paramn.a(2, this.f);
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
      if (!j())
      {
        this.g = 0;
        bool = false;
      }
      else if (!m())
      {
        this.g = 0;
        bool = false;
      }
      else if (!this.e.a())
      {
        this.g = 0;
        bool = false;
      }
      else
      {
        this.g = 1;
        bool = true;
      }
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
        m += n.d(2, this.f);
      j = m + b_().b();
      this.h = j;
    }
  }

  protected final dv g()
  {
    return hh.o();
  }

  public final boolean j()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gq k()
  {
    return this.e;
  }

  public final gs l()
  {
    return this.e;
  }

  public final boolean m()
  {
    if ((0x2 & this.d) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int n()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hv
 * JD-Core Version:    0.6.2
 */