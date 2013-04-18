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

public final class av extends dk
  implements ax
{
  public static final int a = 1;
  public static final int b = 2;
  private static final av c;
  private static final long i;
  private int d;
  private ge e;
  private gt f;
  private byte g = -1;
  private int h = -1;

  static
  {
    av localav = new av();
    c = localav;
    localav.e = ge.h();
    localav.f = gt.h();
  }

  private av()
  {
  }

  private av(aw paramaw, byte paramByte)
  {
    super(paramaw);
  }

  private static av a(i parami)
  {
    return aw.a((aw)aw.i().a(parami));
  }

  private static av a(i parami, df paramdf)
  {
    return aw.a((aw)aw.i().a(parami, paramdf));
  }

  private static av a(m paramm)
  {
    return aw.a((aw)aw.i().a(paramm));
  }

  private static av a(m paramm, df paramdf)
  {
    return aw.a(aw.i().e(paramm, paramdf));
  }

  private static av a(InputStream paramInputStream)
  {
    return aw.a((aw)aw.i().a(paramInputStream));
  }

  private static av a(InputStream paramInputStream, df paramdf)
  {
    return aw.a((aw)aw.i().a(paramInputStream, paramdf));
  }

  private static av a(byte[] paramArrayOfByte)
  {
    return aw.a((aw)aw.i().a(paramArrayOfByte));
  }

  private static av a(byte[] paramArrayOfByte, df paramdf)
  {
    return aw.a((aw)aw.i().a(paramArrayOfByte, paramdf));
  }

  private static aw a(av paramav)
  {
    return aw.i().a(paramav);
  }

  private static av b(InputStream paramInputStream)
  {
    aw localaw = aw.i();
    if (localaw.b(paramInputStream));
    for (av localav = aw.a(localaw); ; localav = null)
      return localav;
  }

  private static av b(InputStream paramInputStream, df paramdf)
  {
    aw localaw = aw.i();
    if (localaw.b(paramInputStream, paramdf));
    for (av localav = aw.a(localaw); ; localav = null)
      return localav;
  }

  private static aw b(dp paramdp)
  {
    return new aw(paramdp);
  }

  public static av h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.h();
  }

  private static av q()
  {
    return c;
  }

  private void r()
  {
    this.e = ge.h();
    this.f = gt.h();
  }

  private static aw s()
  {
    return aw.i();
  }

  private static aw t()
  {
    return aw.i();
  }

  private aw u()
  {
    return aw.i().a(this);
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
    return a.i();
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

  public final gt n()
  {
    return this.f;
  }

  public final gv o()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.av
 * JD-Core Version:    0.6.2
 */