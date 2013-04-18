package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.i;
import java.io.InputStream;

public final class l extends dk
  implements n
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final l d;
  private static final long l;
  private int e;
  private ge f;
  private gj g;
  private gy h;
  private byte i = -1;
  private int k = -1;

  static
  {
    l locall = new l();
    d = locall;
    locall.f = ge.h();
    locall.g = gj.h();
    locall.h = gy.h();
  }

  private l()
  {
  }

  private l(m paramm, byte paramByte)
  {
    super(paramm);
  }

  private static l a(i parami)
  {
    return m.a((m)m.i().a(parami));
  }

  private static l a(i parami, df paramdf)
  {
    return m.a((m)m.i().a(parami, paramdf));
  }

  private static l a(com.b.a.m paramm)
  {
    return m.a((m)m.i().a(paramm));
  }

  private static l a(com.b.a.m paramm, df paramdf)
  {
    return m.a(m.i().e(paramm, paramdf));
  }

  private static l a(InputStream paramInputStream)
  {
    return m.a((m)m.i().a(paramInputStream));
  }

  private static l a(InputStream paramInputStream, df paramdf)
  {
    return m.a((m)m.i().a(paramInputStream, paramdf));
  }

  private static l a(byte[] paramArrayOfByte)
  {
    return m.a((m)m.i().a(paramArrayOfByte));
  }

  private static l a(byte[] paramArrayOfByte, df paramdf)
  {
    return m.a((m)m.i().a(paramArrayOfByte, paramdf));
  }

  private static m a(l paraml)
  {
    return m.i().a(paraml);
  }

  private static l b(InputStream paramInputStream)
  {
    m localm = m.i();
    if (localm.b(paramInputStream));
    for (l locall = m.a(localm); ; locall = null)
      return locall;
  }

  private static l b(InputStream paramInputStream, df paramdf)
  {
    m localm = m.i();
    if (localm.b(paramInputStream, paramdf));
    for (l locall = m.a(localm); ; locall = null)
      return locall;
  }

  private static m b(dp paramdp)
  {
    return new m(paramdp);
  }

  public static l h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.aB();
  }

  private static l t()
  {
    return d;
  }

  private void u()
  {
    this.f = ge.h();
    this.g = gj.h();
    this.h = gy.h();
  }

  private static m v()
  {
    return m.i();
  }

  private static m w()
  {
    return m.i();
  }

  private m x()
  {
    return m.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(com.b.a.n paramn)
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
        n = 0 + com.b.a.n.e(1, this.f);
      if ((0x2 & this.e) == 2)
        n += com.b.a.n.e(2, this.g);
      if ((0x4 & this.e) == 4)
        n += com.b.a.n.e(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return a.aC();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.l
 * JD-Core Version:    0.6.2
 */