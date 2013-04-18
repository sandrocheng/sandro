package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.et;
import com.b.a.eu;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;
import java.util.List;

public final class ep extends dk
  implements er
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final ep d;
  private static final long l;
  private int e;
  private ge f;
  private gn g;
  private eu h;
  private byte i = -1;
  private int k = -1;

  static
  {
    ep localep = new ep();
    d = localep;
    localep.f = ge.h();
    localep.g = gn.h();
    localep.h = et.a;
  }

  private ep()
  {
  }

  private ep(eq parameq, byte paramByte)
  {
    super(parameq);
  }

  private static ep a(i parami)
  {
    return eq.a((eq)eq.i().a(parami));
  }

  private static ep a(i parami, df paramdf)
  {
    return eq.a((eq)eq.i().a(parami, paramdf));
  }

  private static ep a(m paramm)
  {
    return eq.a((eq)eq.i().a(paramm));
  }

  private static ep a(m paramm, df paramdf)
  {
    return eq.a(eq.i().e(paramm, paramdf));
  }

  private static ep a(InputStream paramInputStream)
  {
    return eq.a((eq)eq.i().a(paramInputStream));
  }

  private static ep a(InputStream paramInputStream, df paramdf)
  {
    return eq.a((eq)eq.i().a(paramInputStream, paramdf));
  }

  private static ep a(byte[] paramArrayOfByte)
  {
    return eq.a((eq)eq.i().a(paramArrayOfByte));
  }

  private static ep a(byte[] paramArrayOfByte, df paramdf)
  {
    return eq.a((eq)eq.i().a(paramArrayOfByte, paramdf));
  }

  private static ep b(InputStream paramInputStream)
  {
    eq localeq = eq.i();
    if (localeq.b(paramInputStream));
    for (ep localep = eq.a(localeq); ; localep = null)
      return localep;
  }

  private static ep b(InputStream paramInputStream, df paramdf)
  {
    eq localeq = eq.i();
    if (localeq.b(paramInputStream, paramdf));
    for (ep localep = eq.a(localeq); ; localep = null)
      return localep;
  }

  private static eq b(dp paramdp)
  {
    return new eq(paramdp);
  }

  private static eq b(ep paramep)
  {
    return eq.i().a(paramep);
  }

  public static ep h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.aV();
  }

  private static ep s()
  {
    return d;
  }

  private void t()
  {
    this.f = ge.h();
    this.g = gn.h();
    this.h = et.a;
  }

  private static eq u()
  {
    return eq.i();
  }

  private static eq v()
  {
    return eq.i();
  }

  private eq w()
  {
    return eq.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final String a(int paramInt)
  {
    return (String)this.h.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.b(1, this.f);
    if ((0x2 & this.e) == 2)
      paramn.b(2, this.g);
    for (int j = 0; j < this.h.size(); j++)
      paramn.a(3, this.h.a(j));
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
      else if ((m()) && (!this.g.a()))
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
    int j = 0;
    int m = this.k;
    if (m != -1)
      return m;
    if ((0x1 & this.e) == 1);
    for (int n = 0 + n.e(1, this.f); ; n = 0)
    {
      if ((0x2 & this.e) == 2)
        n += n.e(2, this.g);
      for (int i1 = 0; i1 < this.h.size(); i1++)
        j += n.b(this.h.a(i1));
      m = n + j + 1 * this.h.size() + b_().b();
      this.k = m;
      break;
    }
  }

  protected final dv g()
  {
    return a.aW();
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

  public final gn n()
  {
    return this.g;
  }

  public final gp o()
  {
    return this.g;
  }

  public final List p()
  {
    return this.h;
  }

  public final int q()
  {
    return this.h.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ep
 * JD-Core Version:    0.6.2
 */