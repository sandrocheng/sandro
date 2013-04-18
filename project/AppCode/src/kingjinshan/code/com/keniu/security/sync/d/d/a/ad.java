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

public final class ad extends dk
  implements af
{
  public static final int a = 1;
  public static final int b = 2;
  private static final ad c;
  private static final long i;
  private int d;
  private ge e;
  private gy f;
  private byte g = -1;
  private int h = -1;

  static
  {
    ad localad = new ad();
    c = localad;
    localad.e = ge.h();
    localad.f = gy.h();
  }

  private ad()
  {
  }

  private ad(ae paramae, byte paramByte)
  {
    super(paramae);
  }

  private static ad a(i parami)
  {
    return ae.a((ae)ae.i().a(parami));
  }

  private static ad a(i parami, df paramdf)
  {
    return ae.a((ae)ae.i().a(parami, paramdf));
  }

  private static ad a(m paramm)
  {
    return ae.a((ae)ae.i().a(paramm));
  }

  private static ad a(m paramm, df paramdf)
  {
    return ae.a(ae.i().e(paramm, paramdf));
  }

  public static ad a(InputStream paramInputStream)
  {
    return ae.a((ae)ae.i().a(paramInputStream));
  }

  private static ad a(InputStream paramInputStream, df paramdf)
  {
    return ae.a((ae)ae.i().a(paramInputStream, paramdf));
  }

  private static ad a(byte[] paramArrayOfByte)
  {
    return ae.a((ae)ae.i().a(paramArrayOfByte));
  }

  private static ad a(byte[] paramArrayOfByte, df paramdf)
  {
    return ae.a((ae)ae.i().a(paramArrayOfByte, paramdf));
  }

  private static ae a(ad paramad)
  {
    return ae.i().a(paramad);
  }

  private static ad b(InputStream paramInputStream)
  {
    ae localae = ae.i();
    if (localae.b(paramInputStream));
    for (ad localad = ae.a(localae); ; localad = null)
      return localad;
  }

  private static ad b(InputStream paramInputStream, df paramdf)
  {
    ae localae = ae.i();
    if (localae.b(paramInputStream, paramdf));
    for (ad localad = ae.a(localae); ; localad = null)
      return localad;
  }

  private static ae b(dp paramdp)
  {
    return new ae(paramdp);
  }

  public static ad h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.l();
  }

  private static ad q()
  {
    return c;
  }

  private void r()
  {
    this.e = ge.h();
    this.f = gy.h();
  }

  private static ae s()
  {
    return ae.i();
  }

  private static ae t()
  {
    return ae.i();
  }

  private ae u()
  {
    return ae.i().a(this);
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
    return a.m();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ad
 * JD-Core Version:    0.6.2
 */