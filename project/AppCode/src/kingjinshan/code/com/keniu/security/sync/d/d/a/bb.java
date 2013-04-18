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

public final class bb extends dk
  implements bd
{
  public static final int a = 1;
  public static final int b = 2;
  private static final bb c;
  private static final long i;
  private int d;
  private ge e;
  private gy f;
  private byte g = -1;
  private int h = -1;

  static
  {
    bb localbb = new bb();
    c = localbb;
    localbb.e = ge.h();
    localbb.f = gy.h();
  }

  private bb()
  {
  }

  private bb(bc parambc, byte paramByte)
  {
    super(parambc);
  }

  private static bb a(i parami)
  {
    return bc.a((bc)bc.i().a(parami));
  }

  private static bb a(i parami, df paramdf)
  {
    return bc.a((bc)bc.i().a(parami, paramdf));
  }

  private static bb a(m paramm)
  {
    return bc.a((bc)bc.i().a(paramm));
  }

  private static bb a(m paramm, df paramdf)
  {
    return bc.a(bc.i().e(paramm, paramdf));
  }

  public static bb a(InputStream paramInputStream)
  {
    return bc.a((bc)bc.i().a(paramInputStream));
  }

  private static bb a(InputStream paramInputStream, df paramdf)
  {
    return bc.a((bc)bc.i().a(paramInputStream, paramdf));
  }

  private static bb a(byte[] paramArrayOfByte)
  {
    return bc.a((bc)bc.i().a(paramArrayOfByte));
  }

  private static bb a(byte[] paramArrayOfByte, df paramdf)
  {
    return bc.a((bc)bc.i().a(paramArrayOfByte, paramdf));
  }

  private static bc a(bb parambb)
  {
    return bc.i().a(parambb);
  }

  private static bb b(InputStream paramInputStream)
  {
    bc localbc = bc.i();
    if (localbc.b(paramInputStream));
    for (bb localbb = bc.a(localbc); ; localbb = null)
      return localbb;
  }

  private static bb b(InputStream paramInputStream, df paramdf)
  {
    bc localbc = bc.i();
    if (localbc.b(paramInputStream, paramdf));
    for (bb localbb = bc.a(localbc); ; localbb = null)
      return localbb;
  }

  private static bc b(dp paramdp)
  {
    return new bc(paramdp);
  }

  public static bb h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.d();
  }

  private static bb q()
  {
    return c;
  }

  private void r()
  {
    this.e = ge.h();
    this.f = gy.h();
  }

  private static bc s()
  {
    return bc.i();
  }

  private static bc t()
  {
    return bc.i();
  }

  private bc u()
  {
    return bc.i().a(this);
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
    return a.e();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.bb
 * JD-Core Version:    0.6.2
 */