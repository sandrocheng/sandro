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

public final class fz extends dk
  implements gb
{
  public static final int a = 1;
  private static final fz b;
  private static final long g;
  private int c;
  private ge d;
  private byte e = -1;
  private int f = -1;

  static
  {
    fz localfz = new fz();
    b = localfz;
    localfz.d = ge.h();
  }

  private fz()
  {
  }

  private fz(ga paramga, byte paramByte)
  {
    super(paramga);
  }

  private static fz a(i parami)
  {
    return ga.a((ga)ga.i().a(parami));
  }

  private static fz a(i parami, df paramdf)
  {
    return ga.a((ga)ga.i().a(parami, paramdf));
  }

  private static fz a(m paramm)
  {
    return ga.a((ga)ga.i().a(paramm));
  }

  private static fz a(m paramm, df paramdf)
  {
    return ga.a(ga.i().e(paramm, paramdf));
  }

  private static fz a(InputStream paramInputStream)
  {
    return ga.a((ga)ga.i().a(paramInputStream));
  }

  private static fz a(InputStream paramInputStream, df paramdf)
  {
    return ga.a((ga)ga.i().a(paramInputStream, paramdf));
  }

  private static fz a(byte[] paramArrayOfByte)
  {
    return ga.a((ga)ga.i().a(paramArrayOfByte));
  }

  private static fz a(byte[] paramArrayOfByte, df paramdf)
  {
    return ga.a((ga)ga.i().a(paramArrayOfByte, paramdf));
  }

  private static ga a(fz paramfz)
  {
    return ga.i().a(paramfz);
  }

  private static fz b(InputStream paramInputStream)
  {
    ga localga = ga.i();
    if (localga.b(paramInputStream));
    for (fz localfz = ga.a(localga); ; localfz = null)
      return localfz;
  }

  private static fz b(InputStream paramInputStream, df paramdf)
  {
    ga localga = ga.i();
    if (localga.b(paramInputStream, paramdf));
    for (fz localfz = ga.a(localga); ; localfz = null)
      return localfz;
  }

  private static ga b(dp paramdp)
  {
    return new ga(paramdp);
  }

  public static fz h()
  {
    return b;
  }

  public static final cj i()
  {
    return a.aZ();
  }

  private static fz n()
  {
    return b;
  }

  private void o()
  {
    this.d = ge.h();
  }

  private static ga p()
  {
    return ga.i();
  }

  private static ga q()
  {
    return ga.i();
  }

  private ga r()
  {
    return ga.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.c) == 1)
      paramn.b(1, this.d);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int i = this.e;
    boolean bool;
    if (i != -1)
      if (i == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (!j())
      {
        this.e = 0;
        bool = false;
      }
      else if (!this.d.a())
      {
        this.e = 0;
        bool = false;
      }
      else
      {
        this.e = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int i = this.f;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.c;
      int k = 0;
      if (j == 1)
        k = 0 + n.e(1, this.d);
      i = k + b_().b();
      this.f = i;
    }
  }

  protected final dv g()
  {
    return a.ba();
  }

  public final boolean j()
  {
    if ((0x1 & this.c) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.d;
  }

  public final gg l()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.fz
 * JD-Core Version:    0.6.2
 */