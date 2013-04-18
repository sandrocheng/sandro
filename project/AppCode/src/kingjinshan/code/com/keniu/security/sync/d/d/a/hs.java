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

public final class hs extends dk
  implements hu
{
  public static final int a = 1;
  public static final int b = 2;
  private static final hs c;
  private static final long i;
  private int d;
  private ge e;
  private gn f;
  private byte g = -1;
  private int h = -1;

  static
  {
    hs localhs = new hs();
    c = localhs;
    localhs.e = ge.h();
    localhs.f = gn.h();
  }

  private hs()
  {
  }

  private hs(ht paramht, byte paramByte)
  {
    super(paramht);
  }

  private static hs a(i parami)
  {
    return ht.a((ht)ht.i().a(parami));
  }

  private static hs a(i parami, df paramdf)
  {
    return ht.a((ht)ht.i().a(parami, paramdf));
  }

  private static hs a(m paramm)
  {
    return ht.a((ht)ht.i().a(paramm));
  }

  private static hs a(m paramm, df paramdf)
  {
    return ht.a(ht.i().e(paramm, paramdf));
  }

  private static hs a(InputStream paramInputStream)
  {
    return ht.a((ht)ht.i().a(paramInputStream));
  }

  private static hs a(InputStream paramInputStream, df paramdf)
  {
    return ht.a((ht)ht.i().a(paramInputStream, paramdf));
  }

  public static hs a(byte[] paramArrayOfByte)
  {
    return ht.a((ht)ht.i().a(paramArrayOfByte));
  }

  private static hs a(byte[] paramArrayOfByte, df paramdf)
  {
    return ht.a((ht)ht.i().a(paramArrayOfByte, paramdf));
  }

  private static ht a(hs paramhs)
  {
    return ht.i().a(paramhs);
  }

  private static hs b(InputStream paramInputStream)
  {
    ht localht = ht.i();
    if (localht.b(paramInputStream));
    for (hs localhs = ht.a(localht); ; localhs = null)
      return localhs;
  }

  private static hs b(InputStream paramInputStream, df paramdf)
  {
    ht localht = ht.i();
    if (localht.b(paramInputStream, paramdf));
    for (hs localhs = ht.a(localht); ; localhs = null)
      return localhs;
  }

  private static ht b(dp paramdp)
  {
    return new ht(paramdp);
  }

  public static hs h()
  {
    return c;
  }

  public static final cj i()
  {
    return hh.l();
  }

  private static hs q()
  {
    return c;
  }

  private void r()
  {
    this.e = ge.h();
    this.f = gn.h();
  }

  private static ht s()
  {
    return ht.i();
  }

  private static ht t()
  {
    return ht.i();
  }

  private ht u()
  {
    return ht.i().a(this);
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
      else if ((m()) && (!this.f.a()))
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
    return hh.m();
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

  public final gn n()
  {
    return this.f;
  }

  public final gp o()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hs
 * JD-Core Version:    0.6.2
 */