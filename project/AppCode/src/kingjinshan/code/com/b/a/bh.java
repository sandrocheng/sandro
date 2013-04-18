package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bh extends dq
  implements bi
{
  private int a;
  private boolean b;
  private boolean c;
  private List d = Collections.emptyList();
  private fc e;

  private bh()
  {
    s();
  }

  private bh(dp paramdp, byte paramByte)
  {
    super(paramdp);
    s();
  }

  private void A()
  {
    if ((0x4 & this.a) != 4)
    {
      this.d = new ArrayList(this.d);
      this.a = (0x4 | this.a);
    }
  }

  private bh D()
  {
    if (this.e == null)
    {
      this.d = Collections.emptyList();
      this.a = (0xFFFFFFFB & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.e.e();
    }
  }

  private cc E()
  {
    return (cc)V().b(cb.e());
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
      if ((0x4 & this.a) != 4)
        break label55;
    }
    label55: for (boolean bool = true; ; bool = false)
    {
      this.e = new fc(localList, bool, ae_(), ad_());
      this.d = null;
      return this.e;
    }
  }

  private bh a(int paramInt, cb paramcb)
  {
    if (this.e == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      A();
      this.d.set(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramcb);
    }
  }

  private bh a(int paramInt, cc paramcc)
  {
    if (this.e == null)
    {
      A();
      this.d.set(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramcc.w());
    }
  }

  private bh a(cb paramcb)
  {
    if (this.e == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      A();
      this.d.add(paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramcb);
    }
  }

  private bh a(cc paramcc)
  {
    if (this.e == null)
    {
      A();
      this.d.add(paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramcc.w());
    }
  }

  private bh a(Iterable paramIterable)
  {
    if (this.e == null)
    {
      A();
      dq.a(paramIterable, this.d);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramIterable);
    }
  }

  private bh a(boolean paramBoolean)
  {
    this.a = (0x1 | this.a);
    this.b = paramBoolean;
    af_();
    return this;
  }

  private bh b(int paramInt, cb paramcb)
  {
    if (this.e == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      A();
      this.d.add(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramcb);
    }
  }

  private bh b(int paramInt, cc paramcc)
  {
    if (this.e == null)
    {
      A();
      this.d.add(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramcc.w());
    }
  }

  private bh b(boolean paramBoolean)
  {
    this.a = (0x2 | this.a);
    this.c = paramBoolean;
    af_();
    return this;
  }

  private bh c(int paramInt)
  {
    if (this.e == null)
    {
      A();
      this.d.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.e.d(paramInt);
    }
  }

  private bh d(ev paramev)
  {
    if ((paramev instanceof bg));
    for (bh localbh = a((bg)paramev); ; localbh = this)
    {
      return localbh;
      super.a(paramev);
    }
  }

  private cc d(int paramInt)
  {
    return (cc)V().b(paramInt);
  }

  private cc e(int paramInt)
  {
    return (cc)V().c(paramInt, cb.e());
  }

  private static cj r()
  {
    return p.v();
  }

  private void s()
  {
    if (dk.j)
      V();
  }

  private static bh t()
  {
    return new bh();
  }

  private bh u()
  {
    super.n();
    this.b = false;
    this.a = (0xFFFFFFFE & this.a);
    this.c = false;
    this.a = (0xFFFFFFFD & this.a);
    if (this.e == null)
    {
      this.d = Collections.emptyList();
      this.a = (0xFFFFFFFB & this.a);
    }
    while (true)
    {
      return this;
      this.e.e();
    }
  }

  private bh v()
  {
    return new bh().a(p());
  }

  private static bg w()
  {
    return bg.e();
  }

  private bg x()
  {
    bg localbg = p();
    if (!localbg.a())
      throw b(localbg).a();
    return localbg;
  }

  private bh y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = false;
    af_();
    return this;
  }

  private bh z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = false;
    af_();
    return this;
  }

  protected final dv B()
  {
    return p.w();
  }

  public final cj C()
  {
    return bg.f();
  }

  public final bh a(bg parambg)
  {
    bh localbh;
    if (parambg == bg.e())
    {
      localbh = this;
      return localbh;
    }
    if (parambg.w_())
    {
      boolean bool2 = parambg.i();
      this.a = (0x1 | this.a);
      this.b = bool2;
      af_();
    }
    if (parambg.j())
    {
      boolean bool1 = parambg.k();
      this.a = (0x2 | this.a);
      this.c = bool1;
      af_();
    }
    if (this.e == null)
      if (!bg.b(parambg).isEmpty())
      {
        if (!this.d.isEmpty())
          break label153;
        this.d = bg.b(parambg);
        this.a = (0xFFFFFFFB & this.a);
        label129: af_();
      }
    while (true)
    {
      a(parambg);
      e(parambg.b_());
      localbh = this;
      break;
      label153: A();
      this.d.addAll(bg.b(parambg));
      break label129;
      if (!bg.b(parambg).isEmpty())
      {
        if (this.e.d())
        {
          this.e.b();
          this.e = null;
          this.d = bg.b(parambg);
          this.a = (0xFFFFFFFB & this.a);
          if (dk.j);
          for (fc localfc = V(); ; localfc = null)
          {
            this.e = localfc;
            break;
          }
        }
        this.e.a(bg.b(parambg));
      }
    }
  }

  public final cb a(int paramInt)
  {
    if (this.e == null);
    for (cb localcb = (cb)this.d.get(paramInt); ; localcb = (cb)this.e.a(paramInt))
      return localcb;
  }

  public final boolean a()
  {
    int i = 0;
    boolean bool;
    if (i < x_())
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
    if (this.e == null);
    for (cg localcg = (cg)this.d.get(paramInt); ; localcg = (cg)this.e.c(paramInt))
      return localcg;
  }

  public final bh e(m paramm, df paramdf)
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
        for (bh localbh = this; ; localbh = this)
        {
          return localbh;
          d(localgi.b());
          af_();
        }
      case 8:
        this.a = (0x1 | this.a);
        this.b = paramm.i();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramm.i();
        break;
      case 7994:
        cc localcc = cb.w();
        paramm.a(localcc, paramdf);
        cb localcb = localcc.x();
        if (this.e == null)
        {
          if (localcb == null)
            throw new NullPointerException();
          A();
          this.d.add(localcb);
          af_();
        }
        else
        {
          this.e.a(localcb);
        }
        break;
      }
    }
  }

  public final boolean i()
  {
    return this.b;
  }

  public final boolean j()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean k()
  {
    return this.c;
  }

  public final List l()
  {
    if (this.e == null);
    for (List localList = Collections.unmodifiableList(this.d); ; localList = this.e.g())
      return localList;
  }

  public final bg o()
  {
    bg localbg = p();
    if (!localbg.a())
      throw b(localbg);
    return localbg;
  }

  public final bg p()
  {
    bg localbg = new bg(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    bg.a(localbg, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      bg.b(localbg, this.c);
      if (this.e == null)
      {
        if ((0x4 & this.a) == 4)
        {
          this.d = Collections.unmodifiableList(this.d);
          this.a = (0xFFFFFFFB & this.a);
        }
        bg.a(localbg, this.d);
      }
      while (true)
      {
        bg.a(localbg, m);
        ab_();
        return localbg;
        bg.a(localbg, this.e.f());
      }
    }
  }

  public final boolean w_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int x_()
  {
    if (this.e == null);
    for (int i = this.d.size(); ; i = this.e.c())
      return i;
  }

  public final List y_()
  {
    if (this.e != null);
    for (List localList = this.e.i(); ; localList = Collections.unmodifiableList(this.d))
      return localList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bh
 * JD-Core Version:    0.6.2
 */