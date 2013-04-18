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

public final class fn extends dk
  implements fp
{
  public static final int a = 1;
  public static final int b = 2;
  private static final fn c;
  private static final long i;
  private int d;
  private ge e;
  private gy f;
  private byte g = -1;
  private int h = -1;

  static
  {
    fn localfn = new fn();
    c = localfn;
    localfn.e = ge.h();
    localfn.f = gy.h();
  }

  private fn()
  {
  }

  private fn(fo paramfo, byte paramByte)
  {
    super(paramfo);
  }

  private static fn a(i parami)
  {
    return fo.a((fo)fo.i().a(parami));
  }

  private static fn a(i parami, df paramdf)
  {
    return fo.a((fo)fo.i().a(parami, paramdf));
  }

  private static fn a(m paramm)
  {
    return fo.a((fo)fo.i().a(paramm));
  }

  private static fn a(m paramm, df paramdf)
  {
    return fo.a(fo.i().e(paramm, paramdf));
  }

  private static fn a(InputStream paramInputStream)
  {
    return fo.a((fo)fo.i().a(paramInputStream));
  }

  private static fn a(InputStream paramInputStream, df paramdf)
  {
    return fo.a((fo)fo.i().a(paramInputStream, paramdf));
  }

  private static fn a(byte[] paramArrayOfByte)
  {
    return fo.a((fo)fo.i().a(paramArrayOfByte));
  }

  private static fn a(byte[] paramArrayOfByte, df paramdf)
  {
    return fo.a((fo)fo.i().a(paramArrayOfByte, paramdf));
  }

  private static fo a(fn paramfn)
  {
    return fo.i().a(paramfn);
  }

  private static fn b(InputStream paramInputStream)
  {
    fo localfo = fo.i();
    if (localfo.b(paramInputStream));
    for (fn localfn = fo.a(localfo); ; localfn = null)
      return localfn;
  }

  private static fn b(InputStream paramInputStream, df paramdf)
  {
    fo localfo = fo.i();
    if (localfo.b(paramInputStream, paramdf));
    for (fn localfn = fo.a(localfo); ; localfn = null)
      return localfn;
  }

  private static fo b(dp paramdp)
  {
    return new fo(paramdp);
  }

  public static fn h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.bh();
  }

  private static fn q()
  {
    return c;
  }

  private void r()
  {
    this.e = ge.h();
    this.f = gy.h();
  }

  private static fo s()
  {
    return fo.i();
  }

  private static fo t()
  {
    return fo.i();
  }

  private fo u()
  {
    return fo.i().a(this);
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
      if (!j())
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
        m += n.e(2, this.f);
      j = m + b_().b();
      this.h = j;
    }
  }

  protected final dv g()
  {
    return a.bi();
  }

  public final boolean j()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.e;
  }

  public final gg l()
  {
    return this.e;
  }

  public final boolean m()
  {
    if ((0x2 & this.d) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy n()
  {
    return this.f;
  }

  public final ha o()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.fn
 * JD-Core Version:    0.6.2
 */