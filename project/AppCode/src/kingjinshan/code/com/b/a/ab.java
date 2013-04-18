package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ab extends dq
  implements ac
{
  private int a;
  private List b = Collections.emptyList();
  private fc c;

  private ab()
  {
    q();
  }

  private ab(dp paramdp, byte paramByte)
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

  private ab a(int paramInt, cb paramcb)
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

  private ab a(int paramInt, cc paramcc)
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

  private ab a(cb paramcb)
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

  private ab a(cc paramcc)
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

  private ab a(Iterable paramIterable)
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

  private ab b(int paramInt, cb paramcb)
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

  private ab b(int paramInt, cc paramcc)
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

  private ab c(int paramInt)
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

  private ab d(ev paramev)
  {
    if ((paramev instanceof aa));
    for (ab localab = a((aa)paramev); ; localab = this)
    {
      return localab;
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
    return p.z();
  }

  private void q()
  {
    if (dk.j)
      A();
  }

  private static ab r()
  {
    return new ab();
  }

  private ab s()
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

  private ab t()
  {
    return new ab().a(l());
  }

  private static aa u()
  {
    return aa.e();
  }

  private aa v()
  {
    aa localaa = l();
    if (!localaa.a())
      throw b(localaa).a();
    return localaa;
  }

  private void w()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private ab x()
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
    return p.A();
  }

  public final cj C()
  {
    return aa.f();
  }

  public final ab a(aa paramaa)
  {
    ab localab;
    if (paramaa == aa.e())
    {
      localab = this;
      return localab;
    }
    if (this.c == null)
      if (!aa.b(paramaa).isEmpty())
      {
        if (!this.b.isEmpty())
          break label87;
        this.b = aa.b(paramaa);
        this.a = (0xFFFFFFFE & this.a);
        label63: af_();
      }
    while (true)
    {
      a(paramaa);
      e(paramaa.b_());
      localab = this;
      break;
      label87: w();
      this.b.addAll(aa.b(paramaa));
      break label63;
      if (!aa.b(paramaa).isEmpty())
      {
        if (this.c.d())
        {
          this.c.b();
          this.c = null;
          this.b = aa.b(paramaa);
          this.a = (0xFFFFFFFE & this.a);
          if (dk.j);
          for (fc localfc = A(); ; localfc = null)
          {
            this.c = localfc;
            break;
          }
        }
        this.c.a(aa.b(paramaa));
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

  public final ab e(m paramm, df paramdf)
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
        for (ab localab = this; ; localab = this)
        {
          return localab;
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

  public final List g_()
  {
    if (this.c == null);
    for (List localList = Collections.unmodifiableList(this.b); ; localList = this.c.g())
      return localList;
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

  public final aa k()
  {
    aa localaa = l();
    if (!localaa.a())
      throw b(localaa);
    return localaa;
  }

  public final aa l()
  {
    aa localaa = new aa(this);
    if (this.c == null)
    {
      if ((0x1 & this.a) == 1)
      {
        this.b = Collections.unmodifiableList(this.b);
        this.a = (0xFFFFFFFE & this.a);
      }
      aa.a(localaa, this.b);
    }
    while (true)
    {
      ab_();
      return localaa;
      aa.a(localaa, this.c.f());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ab
 * JD-Core Version:    0.6.2
 */