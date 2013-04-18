package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ex;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class bz extends dk
  implements cb
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final bz d;
  private static final long l;
  private int e;
  private ge f;
  private gy g;
  private List h;
  private byte i = -1;
  private int k = -1;

  static
  {
    bz localbz = new bz();
    d = localbz;
    localbz.f = ge.h();
    localbz.g = gy.h();
    localbz.h = Collections.emptyList();
  }

  private bz()
  {
  }

  private bz(ca paramca, byte paramByte)
  {
    super(paramca);
  }

  private static bz a(i parami)
  {
    return ca.a((ca)ca.i().a(parami));
  }

  private static bz a(i parami, df paramdf)
  {
    return ca.a((ca)ca.i().a(parami, paramdf));
  }

  private static bz a(m paramm)
  {
    return ca.a((ca)ca.i().a(paramm));
  }

  private static bz a(m paramm, df paramdf)
  {
    return ca.a(ca.i().e(paramm, paramdf));
  }

  private static bz a(InputStream paramInputStream)
  {
    return ca.a((ca)ca.i().a(paramInputStream));
  }

  private static bz a(InputStream paramInputStream, df paramdf)
  {
    return ca.a((ca)ca.i().a(paramInputStream, paramdf));
  }

  private static bz a(byte[] paramArrayOfByte)
  {
    return ca.a((ca)ca.i().a(paramArrayOfByte));
  }

  private static bz a(byte[] paramArrayOfByte, df paramdf)
  {
    return ca.a((ca)ca.i().a(paramArrayOfByte, paramdf));
  }

  private static bz b(InputStream paramInputStream)
  {
    ca localca = ca.i();
    if (localca.b(paramInputStream));
    for (bz localbz = ca.a(localca); ; localbz = null)
      return localbz;
  }

  private static bz b(InputStream paramInputStream, df paramdf)
  {
    ca localca = ca.i();
    if (localca.b(paramInputStream, paramdf));
    for (bz localbz = ca.a(localca); ; localbz = null)
      return localbz;
  }

  private static ca b(dp paramdp)
  {
    return new ca(paramdp);
  }

  private static ca b(bz parambz)
  {
    return ca.i().a(parambz);
  }

  public static bz h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.ap();
  }

  private static bz u()
  {
    return d;
  }

  private void v()
  {
    this.f = ge.h();
    this.g = gy.h();
    this.h = Collections.emptyList();
  }

  private static ca w()
  {
    return ca.i();
  }

  private static ca x()
  {
    return ca.i();
  }

  private ca y()
  {
    return ca.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final hc a(int paramInt)
  {
    return (hc)this.h.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.b(1, this.f);
    if ((0x2 & this.e) == 2)
      paramn.b(2, this.g);
    for (int j = 0; j < this.h.size(); j++)
      paramn.b(3, (ex)this.h.get(j));
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
    if (j != -1)
      return j;
    if ((0x1 & this.e) == 1);
    for (int m = 0 + n.e(1, this.f); ; m = 0)
    {
      if ((0x2 & this.e) == 2)
        m += n.e(2, this.g);
      int n = 0;
      int i2;
      for (int i1 = m; n < this.h.size(); i1 = i2)
      {
        i2 = i1 + n.e(3, (ex)this.h.get(n));
        n++;
      }
      j = i1 + b_().b();
      this.k = j;
      break;
    }
  }

  public final hg b(int paramInt)
  {
    return (hg)this.h.get(paramInt);
  }

  protected final dv g()
  {
    return a.aq();
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

  public final gy n()
  {
    return this.g;
  }

  public final ha o()
  {
    return this.g;
  }

  public final List p()
  {
    return this.h;
  }

  public final List q()
  {
    return this.h;
  }

  public final int r()
  {
    return this.h.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.bz
 * JD-Core Version:    0.6.2
 */