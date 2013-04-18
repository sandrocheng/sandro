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

public final class cx extends dk
  implements cz
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final cx e;
  private static final long n;
  private int f;
  private ge g;
  private gn h;
  private eu i;
  private int k;
  private byte l = -1;
  private int m = -1;

  static
  {
    cx localcx = new cx();
    e = localcx;
    localcx.g = ge.h();
    localcx.h = gn.h();
    localcx.i = et.a;
    localcx.k = 0;
  }

  private cx()
  {
  }

  private cx(cy paramcy, byte paramByte)
  {
    super(paramcy);
  }

  private static cx a(i parami)
  {
    return cy.a((cy)cy.i().a(parami));
  }

  private static cx a(i parami, df paramdf)
  {
    return cy.a((cy)cy.i().a(parami, paramdf));
  }

  private static cx a(m paramm)
  {
    return cy.a((cy)cy.i().a(paramm));
  }

  private static cx a(m paramm, df paramdf)
  {
    return cy.a(cy.i().e(paramm, paramdf));
  }

  public static cx a(InputStream paramInputStream)
  {
    return cy.a((cy)cy.i().a(paramInputStream));
  }

  private static cx a(InputStream paramInputStream, df paramdf)
  {
    return cy.a((cy)cy.i().a(paramInputStream, paramdf));
  }

  private static cx a(byte[] paramArrayOfByte)
  {
    return cy.a((cy)cy.i().a(paramArrayOfByte));
  }

  private static cx a(byte[] paramArrayOfByte, df paramdf)
  {
    return cy.a((cy)cy.i().a(paramArrayOfByte, paramdf));
  }

  private static cx b(InputStream paramInputStream)
  {
    cy localcy = cy.i();
    if (localcy.b(paramInputStream));
    for (cx localcx = cy.a(localcy); ; localcx = null)
      return localcx;
  }

  private static cx b(InputStream paramInputStream, df paramdf)
  {
    cy localcy = cy.i();
    if (localcy.b(paramInputStream, paramdf));
    for (cx localcx = cy.a(localcy); ; localcx = null)
      return localcx;
  }

  private static cy b(dp paramdp)
  {
    return new cy(paramdp);
  }

  private static cy b(cx paramcx)
  {
    return cy.i().a(paramcx);
  }

  public static cx h()
  {
    return e;
  }

  public static final cj i()
  {
    return a.Z();
  }

  private static cx u()
  {
    return e;
  }

  private void v()
  {
    this.g = ge.h();
    this.h = gn.h();
    this.i = et.a;
    this.k = 0;
  }

  private static cy w()
  {
    return cy.i();
  }

  private static cy x()
  {
    return cy.i();
  }

  private cy y()
  {
    return cy.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final String a(int paramInt)
  {
    return (String)this.i.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.b(1, this.g);
    if ((0x2 & this.f) == 2)
      paramn.b(2, this.h);
    for (int j = 0; j < this.i.size(); j++)
      paramn.a(3, this.i.a(j));
    if ((0x4 & this.f) == 4)
      paramn.a(4, this.k);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.l;
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
        this.l = 0;
        bool = false;
      }
      else if (!this.g.a())
      {
        this.l = 0;
        bool = false;
      }
      else if ((m()) && (!this.h.a()))
      {
        this.l = 0;
        bool = false;
      }
      else
      {
        this.l = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = 0;
    int i1 = this.m;
    if (i1 != -1)
      return i1;
    if ((0x1 & this.f) == 1);
    for (int i2 = 0 + n.e(1, this.g); ; i2 = 0)
    {
      if ((0x2 & this.f) == 2)
        i2 += n.e(2, this.h);
      for (int i3 = 0; i3 < this.i.size(); i3++)
        j += n.b(this.i.a(i3));
      int i4 = i2 + j + 1 * this.i.size();
      if ((0x4 & this.f) == 4)
        i4 += n.d(4, this.k);
      i1 = i4 + b_().b();
      this.m = i1;
      break;
    }
  }

  protected final dv g()
  {
    return a.aa();
  }

  public final boolean j()
  {
    if ((0x1 & this.f) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.g;
  }

  public final gg l()
  {
    return this.g;
  }

  public final boolean m()
  {
    if ((0x2 & this.f) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn n()
  {
    return this.h;
  }

  public final gp o()
  {
    return this.h;
  }

  public final List p()
  {
    return this.i;
  }

  public final int q()
  {
    return this.i.size();
  }

  public final boolean r()
  {
    if ((0x4 & this.f) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int s()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cx
 * JD-Core Version:    0.6.2
 */