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

public final class bh extends dk
  implements bj
{
  public static final int a = 1;
  public static final int b = 2;
  private static final bh c;
  private static final long i;
  private int d;
  private ge e;
  private hc f;
  private byte g = -1;
  private int h = -1;

  static
  {
    bh localbh = new bh();
    c = localbh;
    localbh.e = ge.h();
    localbh.f = hc.h();
  }

  private bh()
  {
  }

  private bh(bi parambi, byte paramByte)
  {
    super(parambi);
  }

  private static bh a(i parami)
  {
    return bi.a((bi)bi.i().a(parami));
  }

  private static bh a(i parami, df paramdf)
  {
    return bi.a((bi)bi.i().a(parami, paramdf));
  }

  private static bh a(m paramm)
  {
    return bi.a((bi)bi.i().a(paramm));
  }

  private static bh a(m paramm, df paramdf)
  {
    return bi.a(bi.i().e(paramm, paramdf));
  }

  private static bh a(InputStream paramInputStream)
  {
    return bi.a((bi)bi.i().a(paramInputStream));
  }

  private static bh a(InputStream paramInputStream, df paramdf)
  {
    return bi.a((bi)bi.i().a(paramInputStream, paramdf));
  }

  private static bh a(byte[] paramArrayOfByte)
  {
    return bi.a((bi)bi.i().a(paramArrayOfByte));
  }

  private static bh a(byte[] paramArrayOfByte, df paramdf)
  {
    return bi.a((bi)bi.i().a(paramArrayOfByte, paramdf));
  }

  private static bi a(bh parambh)
  {
    return bi.i().a(parambh);
  }

  private static bh b(InputStream paramInputStream)
  {
    bi localbi = bi.i();
    if (localbi.b(paramInputStream));
    for (bh localbh = bi.a(localbi); ; localbh = null)
      return localbh;
  }

  private static bh b(InputStream paramInputStream, df paramdf)
  {
    bi localbi = bi.i();
    if (localbi.b(paramInputStream, paramdf));
    for (bh localbh = bi.a(localbi); ; localbh = null)
      return localbh;
  }

  private static bi b(dp paramdp)
  {
    return new bi(paramdp);
  }

  public static bh h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.aR();
  }

  private static bh q()
  {
    return c;
  }

  private void r()
  {
    this.e = ge.h();
    this.f = hc.h();
  }

  private static bi s()
  {
    return bi.i();
  }

  private static bi t()
  {
    return bi.i();
  }

  private bi u()
  {
    return bi.i().a(this);
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
    return a.aS();
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

  public final hc n()
  {
    return this.f;
  }

  public final hg o()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.bh
 * JD-Core Version:    0.6.2
 */