package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ah extends dq
  implements ai
{
  private int a;
  private List b = Collections.emptyList();
  private fc c;

  private ah()
  {
    q();
  }

  private ah(dp paramdp, byte paramByte)
  {
    super(paramdp);
    q();
  }

  private fc A()
  {
    List localList;
    if (this.c == null)
    {
      localList = this.b;
      if ((0x1 & this.a) != 1)
        break label55;
    }
    label55: for (boolean bool = true; ; bool = false)
    {
      this.c = new fc(localList, bool, ae_(), ad_());
      this.b = null;
      return this.c;
    }
  }

  private ah a(int paramInt, cb paramcb)
  {
    if (this.c == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      w();
      this.b.set(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, paramcb);
    }
  }

  private ah a(int paramInt, cc paramcc)
  {
    if (this.c == null)
    {
      w();
      this.b.set(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, paramcc.w());
    }
  }

  private ah a(cb paramcb)
  {
    if (this.c == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      w();
      this.b.add(paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramcb);
    }
  }

  private ah a(cc paramcc)
  {
    if (this.c == null)
    {
      w();
      this.b.add(paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramcc.w());
    }
  }

  private ah a(Iterable paramIterable)
  {
    if (this.c == null)
    {
      w();
      dq.a(paramIterable, this.b);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramIterable);
    }
  }

  private ah b(int paramInt, cb paramcb)
  {
    if (this.c == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      w();
      this.b.add(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, paramcb);
    }
  }

  private ah b(int paramInt, cc paramcc)
  {
    if (this.c == null)
    {
      w();
      this.b.add(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, paramcc.w());
    }
  }

  private ah c(int paramInt)
  {
    if (this.c == null)
    {
      w();
      this.b.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.c.d(paramInt);
    }
  }

  private ah d(ev paramev)
  {
    if ((paramev instanceof ag));
    for (ah localah = a((ag)paramev); ; localah = this)
    {
      return localah;
      super.a(paramev);
    }
  }

  private cc d(int paramInt)
  {
    return (cc)A().b(paramInt);
  }

  private cc e(int paramInt)
  {
    return (cc)A().c(paramInt, cb.e());
  }

  private static cj p()
  {
    return p.B();
  }

  private void q()
  {
    if (dk.j)
      A();
  }

  private static ah r()
  {
    return new ah();
  }

  private ah s()
  {
    super.n();
    if (this.c == null)
    {
      this.b = Collections.emptyList();
      this.a = (0xFFFFFFFE & this.a);
    }
    while (true)
    {
      return this;
      this.c.e();
    }
  }

  private ah t()
  {
    return new ah().a(l());
  }

  private static ag u()
  {
    return ag.e();
  }

  private ag v()
  {
    ag localag = l();
    if (!localag.a())
      throw b(localag).a();
    return localag;
  }

  private void w()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private ah x()
  {
    if (this.c == null)
    {
      this.b = Collections.emptyList();
      this.a = (0xFFFFFFFE & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.c.e();
    }
  }

  private cc y()
  {
    return (cc)A().b(cb.e());
  }

  private List z()
  {
    return A().h();
  }

  protected final dv B()
  {
    return p.C();
  }

  public final cj C()
  {
    return ag.f();
  }

  public final ah a(ag paramag)
  {
    ah localah;
    if (paramag == ag.e())
    {
      localah = this;
      return localah;
    }
    if (this.c == null)
      if (!ag.b(paramag).isEmpty())
      {
        if (!this.b.isEmpty())
          break label87;
        this.b = ag.b(paramag);
        this.a = (0xFFFFFFFE & this.a);
        label63: af_();
      }
    while (true)
    {
      a(paramag);
      e(paramag.b_());
      localah = this;
      break;
      label87: w();
      this.b.addAll(ag.b(paramag));
      break label63;
      if (!ag.b(paramag).isEmpty())
      {
        if (this.c.d())
        {
          this.c.b();
          this.c = null;
          this.b = ag.b(paramag);
          this.a = (0xFFFFFFFE & this.a);
          if (dk.j);
          for (fc localfc = A(); ; localfc = null)
          {
            this.c = localfc;
            break;
          }
        }
        this.c.a(ag.b(paramag));
      }
    }
  }

  public final cb a(int paramInt)
  {
    if (this.c == null);
    for (cb localcb = (cb)this.b.get(paramInt); ; localcb = (cb)this.c.a(paramInt))
      return localcb;
  }

  public final boolean a()
  {
    int i = 0;
    boolean bool;
    if (i < j())
      if (!a(i).a())
        bool = false;
    while (true)
    {
      return bool;
      i++;
      break;
      if (!N())
        bool = false;
      else
        bool = true;
    }
  }

  public final cg b(int paramInt)
  {
    if (this.c == null);
    for (cg localcg = (cg)this.b.get(paramInt); ; localcg = (cg)this.c.c(paramInt))
      return localcg;
  }

  public final ah e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
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
        for (ah localah = this; ; localah = this)
        {
          return localah;
          d(localgi.b());
          af_();
        }
      case 7994:
        cc localcc = cb.w();
        paramm.a(localcc, paramdf);
        cb localcb = localcc.x();
        if (this.c == null)
        {
          if (localcb == null)
            throw new NullPointerException();
          w();
          this.b.add(localcb);
          af_();
        }
        else
        {
          this.c.a(localcb);
        }
        break;
      }
    }
  }

  public final List i()
  {
    if (this.c != null);
    for (List localList = this.c.i(); ; localList = Collections.unmodifiableList(this.b))
      return localList;
  }

  public final List i_()
  {
    if (this.c == null);
    for (List localList = Collections.unmodifiableList(this.b); ; localList = this.c.g())
      return localList;
  }

  public final int j()
  {
    if (this.c == null);
    for (int i = this.b.size(); ; i = this.c.c())
      return i;
  }

  public final ag k()
  {
    ag localag = l();
    if (!localag.a())
      throw b(localag);
    return localag;
  }

  public final ag l()
  {
    ag localag = new ag(this);
    if (this.c == null)
    {
      if ((0x1 & this.a) == 1)
      {
        this.b = Collections.unmodifiableList(this.b);
        this.a = (0xFFFFFFFE & this.a);
      }
      ag.a(localag, this.b);
    }
    while (true)
    {
      ab_();
      return localag;
      ag.a(localag, this.c.f());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ah
 * JD-Core Version:    0.6.2
 */