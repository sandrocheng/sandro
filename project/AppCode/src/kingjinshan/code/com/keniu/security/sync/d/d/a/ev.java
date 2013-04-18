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

public final class ev extends dk
  implements ex
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final ev d;
  private static final long l;
  private int e;
  private ge f;
  private gj g;
  private gy h;
  private byte i = -1;
  private int k = -1;

  static
  {
    ev localev = new ev();
    d = localev;
    localev.f = ge.h();
    localev.g = gj.h();
    localev.h = gy.h();
  }

  private ev()
  {
  }

  private ev(ew paramew, byte paramByte)
  {
    super(paramew);
  }

  private static ev a(i parami)
  {
    return ew.a((ew)ew.i().a(parami));
  }

  private static ev a(i parami, df paramdf)
  {
    return ew.a((ew)ew.i().a(parami, paramdf));
  }

  private static ev a(m paramm)
  {
    return ew.a((ew)ew.i().a(paramm));
  }

  private static ev a(m paramm, df paramdf)
  {
    return ew.a(ew.i().e(paramm, paramdf));
  }

  private static ev a(InputStream paramInputStream)
  {
    return ew.a((ew)ew.i().a(paramInputStream));
  }

  private static ev a(InputStream paramInputStream, df paramdf)
  {
    return ew.a((ew)ew.i().a(paramInputStream, paramdf));
  }

  private static ev a(byte[] paramArrayOfByte)
  {
    return ew.a((ew)ew.i().a(paramArrayOfByte));
  }

  private static ev a(byte[] paramArrayOfByte, df paramdf)
  {
    return ew.a((ew)ew.i().a(paramArrayOfByte, paramdf));
  }

  private static ew a(ev paramev)
  {
    return ew.i().a(paramev);
  }

  private static ev b(InputStream paramInputStream)
  {
    ew localew = ew.i();
    if (localew.b(paramInputStream));
    for (ev localev = ew.a(localew); ; localev = null)
      return localev;
  }

  private static ev b(InputStream paramInputStream, df paramdf)
  {
    ew localew = ew.i();
    if (localew.b(paramInputStream, paramdf));
    for (ev localev = ew.a(localew); ; localev = null)
      return localev;
  }

  private static ew b(dp paramdp)
  {
    return new ew(paramdp);
  }

  public static ev h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.p();
  }

  private static ev t()
  {
    return d;
  }

  private void u()
  {
    this.f = ge.h();
    this.g = gj.h();
    this.h = gy.h();
  }

  private static ew v()
  {
    return ew.i();
  }

  private static ew w()
  {
    return ew.i();
  }

  private ew x()
  {
    return ew.i().a(this);
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
      paramn.b(3, this.h);
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
        n += n.e(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return a.q();
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

  public final gj n()
  {
    return this.g;
  }

  public final gl o()
  {
    return this.g;
  }

  public final boolean p()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy q()
  {
    return this.h;
  }

  public final ha r()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ev
 * JD-Core Version:    0.6.2
 */