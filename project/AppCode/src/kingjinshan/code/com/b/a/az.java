package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class az extends dn
  implements ba
{
  private int a;
  private List b = Collections.emptyList();
  private fc c;

  private az()
  {
    m();
  }

  private az(dp paramdp, byte paramByte)
  {
    super(paramdp);
    m();
  }

  private az a(int paramInt, av paramav)
  {
    if (this.c == null)
    {
      if (paramav == null)
        throw new NullPointerException();
      u();
      this.b.set(paramInt, paramav);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, paramav);
    }
  }

  private az a(int paramInt, aw paramaw)
  {
    if (this.c == null)
    {
      u();
      this.b.set(paramInt, paramaw.D());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, paramaw.D());
    }
  }

  private az a(av paramav)
  {
    if (this.c == null)
    {
      if (paramav == null)
        throw new NullPointerException();
      u();
      this.b.add(paramav);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramav);
    }
  }

  private az a(aw paramaw)
  {
    if (this.c == null)
    {
      u();
      this.b.add(paramaw.D());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramaw.D());
    }
  }

  private az a(Iterable paramIterable)
  {
    if (this.c == null)
    {
      u();
      dn.a(paramIterable, this.b);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramIterable);
    }
  }

  private az b(int paramInt, av paramav)
  {
    if (this.c == null)
    {
      if (paramav == null)
        throw new NullPointerException();
      u();
      this.b.add(paramInt, paramav);
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, paramav);
    }
  }

  private az b(int paramInt, aw paramaw)
  {
    if (this.c == null)
    {
      u();
      this.b.add(paramInt, paramaw.D());
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, paramaw.D());
    }
  }

  private az c(int paramInt)
  {
    if (this.c == null)
    {
      u();
      this.b.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.c.d(paramInt);
    }
  }

  private aw d(int paramInt)
  {
    return (aw)y().b(paramInt);
  }

  private az d(ev paramev)
  {
    if ((paramev instanceof ay));
    for (az localaz = a((ay)paramev); ; localaz = this)
    {
      return localaz;
      super.a(paramev);
    }
  }

  private aw e(int paramInt)
  {
    return (aw)y().c(paramInt, av.e());
  }

  private static cj l()
  {
    return p.b();
  }

  private void m()
  {
    if (dk.j)
      y();
  }

  private static az n()
  {
    return new az();
  }

  private az o()
  {
    super.F();
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

  private az p()
  {
    return new az().a(t());
  }

  private static ay q()
  {
    return ay.e();
  }

  private ay r()
  {
    ay localay = t();
    if (!localay.a())
      throw b(localay);
    return localay;
  }

  private ay s()
  {
    ay localay = t();
    if (!localay.a())
      throw b(localay).a();
    return localay;
  }

  private ay t()
  {
    ay localay = new ay(this);
    if (this.c == null)
    {
      if ((0x1 & this.a) == 1)
      {
        this.b = Collections.unmodifiableList(this.b);
        this.a = (0xFFFFFFFE & this.a);
      }
      ay.a(localay, this.b);
    }
    while (true)
    {
      ab_();
      return localay;
      ay.a(localay, this.c.f());
    }
  }

  private void u()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private az v()
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

  private aw w()
  {
    return (aw)y().b(av.e());
  }

  private List x()
  {
    return y().h();
  }

  private fc y()
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

  protected final dv B()
  {
    return p.c();
  }

  public final cj C()
  {
    return ay.f();
  }

  public final av a(int paramInt)
  {
    if (this.c == null);
    for (av localav = (av)this.b.get(paramInt); ; localav = (av)this.c.a(paramInt))
      return localav;
  }

  public final az a(ay paramay)
  {
    az localaz;
    if (paramay == ay.e())
    {
      localaz = this;
      return localaz;
    }
    if (this.c == null)
      if (!ay.a(paramay).isEmpty())
      {
        if (!this.b.isEmpty())
          break label82;
        this.b = ay.a(paramay);
        this.a = (0xFFFFFFFE & this.a);
        label63: af_();
      }
    while (true)
    {
      e(paramay.b_());
      localaz = this;
      break;
      label82: u();
      this.b.addAll(ay.a(paramay));
      break label63;
      if (!ay.a(paramay).isEmpty())
      {
        if (this.c.d())
        {
          this.c.b();
          this.c = null;
          this.b = ay.a(paramay);
          this.a = (0xFFFFFFFE & this.a);
          if (dk.j);
          for (fc localfc = y(); ; localfc = null)
          {
            this.c = localfc;
            break;
          }
        }
        this.c.a(ay.a(paramay));
      }
    }
  }

  public final boolean a()
  {
    int i = 0;
    if (i < j())
      if (a(i).a());
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      i++;
      break;
    }
  }

  public final ax b(int paramInt)
  {
    if (this.c == null);
    for (ax localax = (ax)this.b.get(paramInt); ; localax = (ax)this.c.c(paramInt))
      return localax;
  }

  public final az e(m paramm, df paramdf)
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
        for (az localaz = this; ; localaz = this)
        {
          return localaz;
          d(localgi.b());
          af_();
        }
      case 10:
        aw localaw = av.N();
        paramm.a(localaw, paramdf);
        av localav = localaw.E();
        if (this.c == null)
        {
          if (localav == null)
            throw new NullPointerException();
          u();
          this.b.add(localav);
          af_();
        }
        else
        {
          this.c.a(localav);
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

  public final List s_()
  {
    if (this.c == null);
    for (List localList = Collections.unmodifiableList(this.b); ; localList = this.c.g())
      return localList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.az
 * JD-Core Version:    0.6.2
 */