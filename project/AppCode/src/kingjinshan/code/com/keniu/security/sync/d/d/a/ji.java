package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fc;
import com.b.a.fp;
import com.b.a.gi;
import com.b.a.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ji extends dn
  implements jj
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private List d = Collections.emptyList();
  private fc e;

  private ji()
  {
    q();
  }

  private ji(dp paramdp, byte paramByte)
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

  private void D()
  {
    if ((0x2 & this.a) != 2)
    {
      this.d = new ArrayList(this.d);
      this.a = (0x2 | this.a);
    }
  }

  private ji E()
  {
    if (this.e == null)
    {
      this.d = Collections.emptyList();
      this.a = (0xFFFFFFFD & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.e.e();
    }
  }

  private iq N()
  {
    return (iq)V().b(ip.h());
  }

  private List U()
  {
    return V().h();
  }

  private fc V()
  {
    List localList;
    if (this.e == null)
    {
      localList = this.d;
      if ((0x2 & this.a) != 2)
        break label55;
    }
    label55: for (boolean bool = true; ; bool = false)
    {
      this.e = new fc(localList, bool, ae_(), ad_());
      this.d = null;
      return this.e;
    }
  }

  private ji a(int paramInt, ip paramip)
  {
    if (this.e == null)
    {
      if (paramip == null)
        throw new NullPointerException();
      D();
      this.d.set(paramInt, paramip);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramip);
    }
  }

  private ji a(int paramInt, iq paramiq)
  {
    if (this.e == null)
    {
      D();
      this.d.set(paramInt, paramiq.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramiq.i());
    }
  }

  private ji a(ge paramge)
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

  private ji a(gf paramgf)
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

  private ji a(ip paramip)
  {
    if (this.e == null)
    {
      if (paramip == null)
        throw new NullPointerException();
      D();
      this.d.add(paramip);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramip);
    }
  }

  private ji a(iq paramiq)
  {
    if (this.e == null)
    {
      D();
      this.d.add(paramiq.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramiq.i());
    }
  }

  private ji a(Iterable paramIterable)
  {
    if (this.e == null)
    {
      D();
      dn.a(paramIterable, this.d);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramIterable);
    }
  }

  private ji b(int paramInt, ip paramip)
  {
    if (this.e == null)
    {
      if (paramip == null)
        throw new NullPointerException();
      D();
      this.d.add(paramInt, paramip);
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramip);
    }
  }

  private ji b(int paramInt, iq paramiq)
  {
    if (this.e == null)
    {
      D();
      this.d.add(paramInt, paramiq.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramiq.i());
    }
  }

  private ji b(ge paramge)
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

  private ji c(int paramInt)
  {
    if (this.e == null)
    {
      D();
      this.d.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.e.d(paramInt);
    }
  }

  private iq d(int paramInt)
  {
    return (iq)V().b(paramInt);
  }

  private ji d(ev paramev)
  {
    if ((paramev instanceof jh));
    for (ji localji = a((jh)paramev); ; localji = this)
    {
      return localji;
      super.a(paramev);
    }
  }

  private iq e(int paramInt)
  {
    return (iq)V().c(paramInt, ip.h());
  }

  private static cj p()
  {
    return ih.v();
  }

  private void q()
  {
    if (jh.p())
    {
      A();
      V();
    }
  }

  private static ji r()
  {
    return new ji();
  }

  private ji s()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label68;
      this.d = Collections.emptyList();
      this.a = (0xFFFFFFFD & this.a);
    }
    while (true)
    {
      return this;
      this.c.g();
      break;
      label68: this.e.e();
    }
  }

  private ji t()
  {
    return new ji().a(x());
  }

  private static jh u()
  {
    return jh.h();
  }

  private jh v()
  {
    jh localjh = x();
    if (!localjh.a())
      throw b(localjh);
    return localjh;
  }

  private jh w()
  {
    jh localjh = x();
    if (!localjh.a())
      throw b(localjh).a();
    return localjh;
  }

  private jh x()
  {
    jh localjh = new jh(this);
    int i = 0x1 & this.a;
    int j = 0;
    if (i == 1)
      j = 1;
    if (this.c == null)
    {
      jh.a(localjh, this.b);
      if (this.e != null)
        break label119;
      if ((0x2 & this.a) == 2)
      {
        this.d = Collections.unmodifiableList(this.d);
        this.a = (0xFFFFFFFD & this.a);
      }
      jh.a(localjh, this.d);
    }
    while (true)
    {
      jh.a(localjh, j);
      ab_();
      return localjh;
      jh.a(localjh, (ge)this.c.d());
      break;
      label119: jh.a(localjh, this.e.f());
    }
  }

  private ji y()
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
    return ih.w();
  }

  public final cj C()
  {
    return jh.i();
  }

  public final ip a(int paramInt)
  {
    if (this.e == null);
    for (ip localip = (ip)this.d.get(paramInt); ; localip = (ip)this.e.a(paramInt))
      return localip;
  }

  public final ji a(jh paramjh)
  {
    ji localji;
    if (paramjh == jh.h())
    {
      localji = this;
      return localji;
    }
    ge localge;
    if (paramjh.j())
    {
      localge = paramjh.k();
      if (this.c != null)
        break label164;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        label72: af_();
        label76: this.a = (0x1 | this.a);
      }
    }
    else
    {
      if (this.e != null)
        break label198;
      if (!jh.a(paramjh).isEmpty())
      {
        if (!this.d.isEmpty())
          break label177;
        this.d = jh.a(paramjh);
        this.a = (0xFFFFFFFD & this.a);
        label136: af_();
      }
    }
    while (true)
    {
      e(paramjh.b_());
      localji = this;
      break;
      this.b = localge;
      break label72;
      label164: this.c.b(localge);
      break label76;
      label177: D();
      this.d.addAll(jh.a(paramjh));
      break label136;
      label198: if (!jh.a(paramjh).isEmpty())
      {
        if (this.e.d())
        {
          this.e.b();
          this.e = null;
          this.d = jh.a(paramjh);
          this.a = (0xFFFFFFFD & this.a);
          if (jh.q());
          for (fc localfc = V(); ; localfc = null)
          {
            this.e = localfc;
            break;
          }
        }
        this.e.a(jh.a(paramjh));
      }
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
      {
        bool = false;
      }
      else
      {
        for (int i = 0; ; i++)
        {
          if (i >= o())
            break label58;
          if (!a(i).a())
          {
            bool = false;
            break;
          }
        }
        label58: bool = true;
      }
    }
  }

  public final ir b(int paramInt)
  {
    if (this.e == null);
    for (ir localir = (ir)this.d.get(paramInt); ; localir = (ir)this.e.c(paramInt))
      return localir;
  }

  public final ji e(m paramm, df paramdf)
  {
    gi localgi = com.b.a.gg.a(b_());
    while (true)
    {
      int i = paramm.a();
      switch (i)
      {
      default:
        if (!a(paramm, localgi, paramdf, i))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (ji localji = this; ; localji = this)
        {
          return localji;
          d(localgi.b());
          af_();
        }
      case 10:
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
      case 18:
        iq localiq = ip.t();
        paramm.a(localiq, paramdf);
        ip localip = localiq.t();
        if (this.e == null)
        {
          if (localip == null)
            throw new NullPointerException();
          D();
          this.d.add(localip);
          af_();
        }
        else
        {
          this.e.a(localip);
        }
        break;
      }
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

  public final List m()
  {
    if (this.e == null);
    for (List localList = Collections.unmodifiableList(this.d); ; localList = this.e.g())
      return localList;
  }

  public final List n()
  {
    if (this.e != null);
    for (List localList = this.e.i(); ; localList = Collections.unmodifiableList(this.d))
      return localList;
  }

  public final int o()
  {
    if (this.e == null);
    for (int i = this.d.size(); ; i = this.e.c())
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ji
 * JD-Core Version:    0.6.2
 */