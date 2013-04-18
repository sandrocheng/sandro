package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fp;
import com.b.a.gi;
import com.b.a.m;

public final class aw extends dn
  implements ax
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gt d = gt.h();
  private fp e;

  private aw()
  {
    q();
  }

  private aw(dp paramdp, byte paramByte)
  {
    super(paramdp);
    q();
  }

  private fp A()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private aw D()
  {
    if (this.e == null)
    {
      this.d = gt.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.e.g();
    }
  }

  private gu E()
  {
    this.a = (0x2 | this.a);
    af_();
    return (gu)N().e();
  }

  private fp N()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private aw a(ge paramge)
  {
    if (this.c == null)
    {
      if (paramge == null)
        throw new NullPointerException();
      this.b = paramge;
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramge);
    }
  }

  private aw a(gf paramgf)
  {
    if (this.c == null)
    {
      this.b = paramgf.i();
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgf.i());
    }
  }

  private aw a(gt paramgt)
  {
    if (this.e == null)
    {
      if (paramgt == null)
        throw new NullPointerException();
      this.d = paramgt;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgt);
    }
  }

  private aw a(gu paramgu)
  {
    if (this.e == null)
    {
      this.d = paramgu.i();
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgu.i());
    }
  }

  private aw b(ge paramge)
  {
    if (this.c == null)
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(paramge).n();
        af_();
      }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.b = paramge;
      break;
      this.c.b(paramge);
    }
  }

  private aw b(gt paramgt)
  {
    if (this.e == null)
      if (((0x2 & this.a) == 2) && (this.d != gt.h()))
      {
        this.d = gt.a(this.d).a(paramgt).z();
        af_();
      }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.d = paramgt;
      break;
      this.e.b(paramgt);
    }
  }

  private aw d(ev paramev)
  {
    if ((paramev instanceof av));
    for (aw localaw = a((av)paramev); ; localaw = this)
    {
      return localaw;
      super.a(paramev);
    }
  }

  private static cj p()
  {
    return a.h();
  }

  private void q()
  {
    if (av.p())
    {
      A();
      N();
    }
  }

  private static aw r()
  {
    return new aw();
  }

  private aw s()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label68;
      this.d = gt.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.c.g();
      break;
      label68: this.e.g();
    }
  }

  private aw t()
  {
    return new aw().a(x());
  }

  private static av u()
  {
    return av.h();
  }

  private av v()
  {
    av localav = x();
    if (!localav.a())
      throw b(localav);
    return localav;
  }

  private av w()
  {
    av localav = x();
    if (!localav.a())
      throw b(localav).a();
    return localav;
  }

  private av x()
  {
    av localav = new av(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        av.a(localav, this.b);
        if ((i & 0x2) != 2)
          break label116;
      }
      label116: for (int k = j | 0x2; ; k = j)
      {
        if (this.e == null)
          av.a(localav, this.d);
        while (true)
        {
          av.a(localav, k);
          ab_();
          return localav;
          av.a(localav, (ge)this.c.d());
          break;
          av.a(localav, (gt)this.e.d());
        }
      }
    }
  }

  private aw y()
  {
    if (this.c == null)
    {
      this.b = ge.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      return this;
      this.c.g();
    }
  }

  private gf z()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)A().e();
  }

  protected final dv B()
  {
    return a.i();
  }

  public final cj C()
  {
    return av.i();
  }

  public final aw a(av paramav)
  {
    aw localaw;
    if (paramav == av.h())
    {
      localaw = this;
      return localaw;
    }
    ge localge;
    label70: label74: gt localgt;
    if (paramav.j())
    {
      localge = paramav.k();
      if (this.c != null)
        break label180;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else if (paramav.m())
    {
      localgt = paramav.n();
      if (this.e != null)
        break label202;
      if (((0x2 & this.a) != 2) || (this.d == gt.h()))
        break label193;
      this.d = gt.a(this.d).a(localgt).z();
      label143: af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      e(paramav.b_());
      localaw = this;
      break;
      this.b = localge;
      break label70;
      label180: this.c.b(localge);
      break label74;
      label193: this.d = localgt;
      break label143;
      label202: this.e.b(localgt);
    }
  }

  public final boolean a()
  {
    boolean bool;
    if (!j())
      bool = false;
    while (true)
    {
      return bool;
      if (!k().a())
        bool = false;
      else
        bool = true;
    }
  }

  public final aw e(m paramm, df paramdf)
  {
    gi localgi = com.b.a.gg.a(b_());
    int i;
    do
    {
      i = paramm.a();
      switch (i)
      {
      default:
      case 0:
      case 10:
      case 18:
      }
    }
    while (a(paramm, localgi, paramdf, i));
    d(localgi.b());
    af_();
    for (aw localaw = this; ; localaw = this)
    {
      return localaw;
      d(localgi.b());
      af_();
    }
    gf localgf = ge.n();
    if (j())
      localgf.a(k());
    paramm.a(localgf, paramdf);
    ge localge = localgf.n();
    if (this.c == null)
    {
      if (localge == null)
        throw new NullPointerException();
      this.b = localge;
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      break;
      this.c.a(localge);
    }
    gu localgu = gt.z();
    if (m())
      localgu.a(n());
    paramm.a(localgu, paramdf);
    gt localgt = localgu.z();
    if (this.e == null)
    {
      if (localgt == null)
        throw new NullPointerException();
      this.d = localgt;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      break;
      this.e.a(localgt);
    }
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    if (this.c == null);
    for (ge localge = this.b; ; localge = (ge)this.c.c())
      return localge;
  }

  public final gg l()
  {
    if (this.c != null);
    for (Object localObject = (gg)this.c.f(); ; localObject = this.b)
      return localObject;
  }

  public final boolean m()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gt n()
  {
    if (this.e == null);
    for (gt localgt = this.d; ; localgt = (gt)this.e.c())
      return localgt;
  }

  public final gv o()
  {
    if (this.e != null);
    for (Object localObject = (gv)this.e.f(); ; localObject = this.d)
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.aw
 * JD-Core Version:    0.6.2
 */