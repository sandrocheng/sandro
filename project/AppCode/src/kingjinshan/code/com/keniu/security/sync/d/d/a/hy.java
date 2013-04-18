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

public final class hy extends dk
  implements ia
{
  public static final int a = 1;
  private static final hy b;
  private static final long g;
  private int c;
  private ge d;
  private byte e = -1;
  private int f = -1;

  static
  {
    hy localhy = new hy();
    b = localhy;
    localhy.d = ge.h();
  }

  private hy()
  {
  }

  private hy(hz paramhz, byte paramByte)
  {
    super(paramhz);
  }

  private static hy a(i parami)
  {
    return hz.a((hz)hz.i().a(parami));
  }

  private static hy a(i parami, df paramdf)
  {
    return hz.a((hz)hz.i().a(parami, paramdf));
  }

  private static hy a(m paramm)
  {
    return hz.a((hz)hz.i().a(paramm));
  }

  private static hy a(m paramm, df paramdf)
  {
    return hz.a(hz.i().e(paramm, paramdf));
  }

  private static hy a(InputStream paramInputStream)
  {
    return hz.a((hz)hz.i().a(paramInputStream));
  }

  private static hy a(InputStream paramInputStream, df paramdf)
  {
    return hz.a((hz)hz.i().a(paramInputStream, paramdf));
  }

  private static hy a(byte[] paramArrayOfByte)
  {
    return hz.a((hz)hz.i().a(paramArrayOfByte));
  }

  private static hy a(byte[] paramArrayOfByte, df paramdf)
  {
    return hz.a((hz)hz.i().a(paramArrayOfByte, paramdf));
  }

  private static hz a(hy paramhy)
  {
    return hz.i().a(paramhy);
  }

  private static hy b(InputStream paramInputStream)
  {
    hz localhz = hz.i();
    if (localhz.b(paramInputStream));
    for (hy localhy = hz.a(localhz); ; localhy = null)
      return localhy;
  }

  private static hy b(InputStream paramInputStream, df paramdf)
  {
    hz localhz = hz.i();
    if (localhz.b(paramInputStream, paramdf));
    for (hy localhy = hz.a(localhz); ; localhy = null)
      return localhy;
  }

  private static hz b(dp paramdp)
  {
    return new hz(paramdp);
  }

  public static hy h()
  {
    return b;
  }

  public static final cj i()
  {
    return hh.p();
  }

  private static hy n()
  {
    return b;
  }

  private void o()
  {
    this.d = ge.h();
  }

  private static hz p()
  {
    return hz.i();
  }

  private static hz q()
  {
    return hz.i();
  }

  private hz r()
  {
    return hz.i().a(this);
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
    return hh.q();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.hy
 * JD-Core Version:    0.6.2
 */