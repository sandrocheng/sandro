package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bt extends dq
  implements bu
{
  private int a;
  private List b = Collections.emptyList();
  private fc c;

  private bt()
  {
    q();
  }

  private bt(dp paramdp, byte paramByte)
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

  private bt a(int paramInt, cb paramcb)
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

  private bt a(int paramInt, cc paramcc)
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

  private bt a(cb paramcb)
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

  private bt a(cc paramcc)
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

  private bt a(Iterable paramIterable)
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

  private bt b(int paramInt, cb paramcb)
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

  private bt b(int paramInt, cc paramcc)
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

  private bt c(int paramInt)
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

  private bt d(ev paramev)
  {
    if ((paramev instanceof bs));
    for (bt localbt = a((bs)paramev); ; localbt = this)
    {
      return localbt;
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
    return p.D();
  }

  private void q()
  {
    if (dk.j)
      A();
  }

  private static bt r()
  {
    return new bt();
  }

  private bt s()
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

  private bt t()
  {
    return new bt().a(l());
  }

  private static bs u()
  {
    return bs.e();
  }

  private bs v()
  {
    bs localbs = l();
    if (!localbs.a())
      throw b(localbs).a();
    return localbs;
  }

  private void w()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private bt x()
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
    return p.E();
  }

  public final cj C()
  {
    return bs.f();
  }

  public final List C_()
  {
    if (this.c == null);
    for (List localList = Collections.unmodifiableList(this.b); ; localList = this.c.g())
      return localList;
  }

  public final bt a(bs parambs)
  {
    bt localbt;
    if (parambs == bs.e())
    {
      localbt = this;
      return localbt;
    }
    if (this.c == null)
      if (!bs.b(parambs).isEmpty())
      {
        if (!this.b.isEmpty())
          break label87;
        this.b = bs.b(parambs);
        this.a = (0xFFFFFFFE & this.a);
        label63: af_();
      }
    while (true)
    {
      a(parambs);
      e(parambs.b_());
      localbt = this;
      break;
      label87: w();
      this.b.addAll(bs.b(parambs));
      break label63;
      if (!bs.b(parambs).isEmpty())
      {
        if (this.c.d())
        {
          this.c.b();
          this.c = null;
          this.b = bs.b(parambs);
          this.a = (0xFFFFFFFE & this.a);
          if (dk.j);
          for (fc localfc = A(); ; localfc = null)
          {
            this.c = localfc;
            break;
          }
        }
        this.c.a(bs.b(parambs));
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

  public final bt e(m paramm, df paramdf)
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
        for (bt localbt = this; ; localbt = this)
        {
          return localbt;
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

  public final int j()
  {
    if (this.c == null);
    for (int i = this.b.size(); ; i = this.c.c())
      return i;
  }

  public final bs k()
  {
    bs localbs = l();
    if (!localbs.a())
      throw b(localbs);
    return localbs;
  }

  public final bs l()
  {
    bs localbs = new bs(this);
    if (this.c == null)
    {
      if ((0x1 & this.a) == 1)
      {
        this.b = Collections.unmodifiableList(this.b);
        this.a = (0xFFFFFFFE & this.a);
      }
      bs.a(localbs, this.b);
    }
    while (true)
    {
      ab_();
      return localbs;
      bs.a(localbs, this.c.f());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bt
 * JD-Core Version:    0.6.2
 */