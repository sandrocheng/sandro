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

public final class fb extends dk
  implements fd
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final fb d;
  private static final long l;
  private int e;
  private ge f;
  private gy g;
  private hc h;
  private byte i = -1;
  private int k = -1;

  static
  {
    fb localfb = new fb();
    d = localfb;
    localfb.f = ge.h();
    localfb.g = gy.h();
    localfb.h = hc.h();
  }

  private fb()
  {
  }

  private fb(fc paramfc, byte paramByte)
  {
    super(paramfc);
  }

  private static fb a(i parami)
  {
    return fc.a((fc)fc.i().a(parami));
  }

  private static fb a(i parami, df paramdf)
  {
    return fc.a((fc)fc.i().a(parami, paramdf));
  }

  private static fb a(m paramm)
  {
    return fc.a((fc)fc.i().a(paramm));
  }

  private static fb a(m paramm, df paramdf)
  {
    return fc.a(fc.i().e(paramm, paramdf));
  }

  private static fb a(InputStream paramInputStream)
  {
    return fc.a((fc)fc.i().a(paramInputStream));
  }

  private static fb a(InputStream paramInputStream, df paramdf)
  {
    return fc.a((fc)fc.i().a(paramInputStream, paramdf));
  }

  private static fb a(byte[] paramArrayOfByte)
  {
    return fc.a((fc)fc.i().a(paramArrayOfByte));
  }

  private static fb a(byte[] paramArrayOfByte, df paramdf)
  {
    return fc.a((fc)fc.i().a(paramArrayOfByte, paramdf));
  }

  private static fc a(fb paramfb)
  {
    return fc.i().a(paramfb);
  }

  private static fb b(InputStream paramInputStream)
  {
    fc localfc = fc.i();
    if (localfc.b(paramInputStream));
    for (fb localfb = fc.a(localfc); ; localfb = null)
      return localfb;
  }

  private static fb b(InputStream paramInputStream, df paramdf)
  {
    fc localfc = fc.i();
    if (localfc.b(paramInputStream, paramdf));
    for (fb localfb = fc.a(localfc); ; localfb = null)
      return localfb;
  }

  private static fc b(dp paramdp)
  {
    return new fc(paramdp);
  }

  public static fb h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.aF();
  }

  private static fb t()
  {
    return d;
  }

  private void u()
  {
    this.f = ge.h();
    this.g = gy.h();
    this.h = hc.h();
  }

  private static fc v()
  {
    return fc.i();
  }

  private static fc w()
  {
    return fc.i();
  }

  private fc x()
  {
    return fc.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
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
        n = 0 + n.e(1, this.f);
      if ((0x2 & this.e) == 2)
        n += n.e(2, this.g);
      if ((0x4 & this.e) == 4)
        n += n.e(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return a.aG();
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

  public final boolean p()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final hc q()
  {
    return this.h;
  }

  public final hg r()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.fb
 * JD-Core Version:    0.6.2
 */