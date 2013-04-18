package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bq extends dn
  implements br
{
  private int a;
  private Object b = "";
  private List c = Collections.emptyList();
  private fc d;
  private bs e = bs.e();
  private fp f;

  private bq()
  {
    t();
  }

  private bq(dp paramdp, byte paramByte)
  {
    super(paramdp);
    t();
  }

  private void A()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new ArrayList(this.c);
      this.a = (0x2 | this.a);
    }
  }

  private bq D()
  {
    if (this.d == null)
    {
      this.c = Collections.emptyList();
      this.a = (0xFFFFFFFD & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.d.e();
    }
  }

  private bk E()
  {
    return (bk)U().b(bj.e());
  }

  private List N()
  {
    return U().h();
  }

  private fc U()
  {
    List localList;
    if (this.d == null)
    {
      localList = this.c;
      if ((0x2 & this.a) != 2)
        break label55;
    }
    label55: for (boolean bool = true; ; bool = false)
    {
      this.d = new fc(localList, bool, ae_(), ad_());
      this.c = null;
      return this.d;
    }
  }

  private bq V()
  {
    if (this.f == null)
    {
      this.e = bs.e();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.f.g();
    }
  }

  private bt W()
  {
    this.a = (0x4 | this.a);
    af_();
    return (bt)X().e();
  }

  private fp X()
  {
    if (this.f == null)
    {
      this.f = new fp(this.e, ae_(), ad_());
      this.e = null;
    }
    return this.f;
  }

  private bq a(int paramInt, bj parambj)
  {
    if (this.d == null)
    {
      if (parambj == null)
        throw new NullPointerException();
      A();
      this.c.set(paramInt, parambj);
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramInt, parambj);
    }
  }

  private bq a(int paramInt, bk parambk)
  {
    if (this.d == null)
    {
      A();
      this.c.set(paramInt, parambk.q());
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramInt, parambk.q());
    }
  }

  private bq a(bj parambj)
  {
    if (this.d == null)
    {
      if (parambj == null)
        throw new NullPointerException();
      A();
      this.c.add(parambj);
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(parambj);
    }
  }

  private bq a(bk parambk)
  {
    if (this.d == null)
    {
      A();
      this.c.add(parambk.q());
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(parambk.q());
    }
  }

  private bq a(bs parambs)
  {
    if (this.f == null)
    {
      if (parambs == null)
        throw new NullPointerException();
      this.e = parambs;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.f.a(parambs);
    }
  }

  private bq a(bt parambt)
  {
    if (this.f == null)
    {
      this.e = parambt.k();
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.f.a(parambt.k());
    }
  }

  private bq a(Iterable paramIterable)
  {
    if (this.d == null)
    {
      A();
      dn.a(paramIterable, this.c);
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramIterable);
    }
  }

  private bq a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private bq b(int paramInt, bj parambj)
  {
    if (this.d == null)
    {
      if (parambj == null)
        throw new NullPointerException();
      A();
      this.c.add(paramInt, parambj);
      af_();
    }
    while (true)
    {
      return this;
      this.d.b(paramInt, parambj);
    }
  }

  private bq b(int paramInt, bk parambk)
  {
    if (this.d == null)
    {
      A();
      this.c.add(paramInt, parambk.q());
      af_();
    }
    while (true)
    {
      return this;
      this.d.b(paramInt, parambk.q());
    }
  }

  private bq b(bs parambs)
  {
    if (this.f == null)
      if (((0x4 & this.a) == 4) && (this.e != bs.e()))
      {
        this.e = bs.a(this.e).a(parambs).l();
        af_();
      }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.e = parambs;
      break;
      this.f.b(parambs);
    }
  }

  private bq c(int paramInt)
  {
    if (this.d == null)
    {
      A();
      this.c.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.d.d(paramInt);
    }
  }

  private bk d(int paramInt)
  {
    return (bk)U().b(paramInt);
  }

  private bq d(ev paramev)
  {
    if ((paramev instanceof bp));
    for (bq localbq = a((bp)paramev); ; localbq = this)
    {
      return localbq;
      super.a(paramev);
    }
  }

  private bk e(int paramInt)
  {
    return (bk)U().c(paramInt, bj.e());
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private static cj s()
  {
    return p.p();
  }

  private void t()
  {
    if (dk.j)
    {
      U();
      X();
    }
  }

  private static bq u()
  {
    return new bq();
  }

  private bq v()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    if (this.d == null)
    {
      this.c = Collections.emptyList();
      this.a = (0xFFFFFFFD & this.a);
      if (this.f != null)
        break label84;
      this.e = bs.e();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.d.e();
      break;
      label84: this.f.g();
    }
  }

  private bq w()
  {
    return new bq().a(q());
  }

  private static bp x()
  {
    return bp.e();
  }

  private bp y()
  {
    bp localbp = q();
    if (!localbp.a())
      throw b(localbp).a();
    return localbp;
  }

  private bq z()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = bp.e().i();
    af_();
    return this;
  }

  protected final dv B()
  {
    return p.q();
  }

  public final boolean B_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final cj C()
  {
    return bp.f();
  }

  public final bj a(int paramInt)
  {
    if (this.d == null);
    for (bj localbj = (bj)this.c.get(paramInt); ; localbj = (bj)this.d.a(paramInt))
      return localbj;
  }

  public final bq a(bp parambp)
  {
    bq localbq;
    if (parambp == bp.e())
    {
      localbq = this;
      return localbq;
    }
    if (parambp.B_())
    {
      String str = parambp.i();
      if (str == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = str;
      af_();
    }
    label109: label113: bs localbs;
    if (this.d == null)
      if (!bp.a(parambp).isEmpty())
      {
        if (this.c.isEmpty())
        {
          this.c = bp.a(parambp);
          this.a = (0xFFFFFFFD & this.a);
          af_();
        }
      }
      else if (parambp.m())
      {
        localbs = parambp.n();
        if (this.f != null)
          break label326;
        if (((0x4 & this.a) != 4) || (this.e == bs.e()))
          break label317;
        this.e = bs.a(this.e).a(localbs).l();
        label172: af_();
      }
    while (true)
    {
      this.a = (0x4 | this.a);
      e(parambp.b_());
      localbq = this;
      break;
      A();
      this.c.addAll(bp.a(parambp));
      break label109;
      if (bp.a(parambp).isEmpty())
        break label113;
      if (this.d.d())
      {
        this.d.b();
        this.d = null;
        this.c = bp.a(parambp);
        this.a = (0xFFFFFFFD & this.a);
        if (dk.j);
        for (fc localfc = U(); ; localfc = null)
        {
          this.d = localfc;
          break;
        }
      }
      this.d.a(bp.a(parambp));
      break label113;
      label317: this.e = localbs;
      break label172;
      label326: this.f.b(localbs);
    }
  }

  public final boolean a()
  {
    int i = 0;
    boolean bool;
    if (i < l())
      if (!a(i).a())
        bool = false;
    while (true)
    {
      return bool;
      i++;
      break;
      if ((m()) && (!n().a()))
        bool = false;
      else
        bool = true;
    }
  }

  public final bl b(int paramInt)
  {
    if (this.d == null);
    for (bl localbl = (bl)this.c.get(paramInt); ; localbl = (bl)this.d.c(paramInt))
      return localbl;
  }

  public final bq e(m paramm, df paramdf)
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
        for (bq localbq = this; ; localbq = this)
        {
          return localbq;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        bk localbk = bj.q();
        paramm.a(localbk, paramdf);
        bj localbj = localbk.r();
        if (this.d == null)
        {
          if (localbj == null)
            throw new NullPointerException();
          A();
          this.c.add(localbj);
          af_();
        }
        else
        {
          this.d.a(localbj);
        }
        break;
      case 26:
      }
    }
    bt localbt = bs.k();
    if (m())
      localbt.a(n());
    paramm.a(localbt, paramdf);
    bs localbs = localbt.l();
    if (this.f == null)
    {
      if (localbs == null)
        throw new NullPointerException();
      this.e = localbs;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      break;
      this.f.a(localbs);
    }
  }

  public final String i()
  {
    Object localObject = this.b;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.b = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final List j()
  {
    if (this.d == null);
    for (List localList = Collections.unmodifiableList(this.c); ; localList = this.d.g())
      return localList;
  }

  public final List k()
  {
    if (this.d != null);
    for (List localList = this.d.i(); ; localList = Collections.unmodifiableList(this.c))
      return localList;
  }

  public final int l()
  {
    if (this.d == null);
    for (int i = this.c.size(); ; i = this.d.c())
      return i;
  }

  public final boolean m()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final bs n()
  {
    if (this.f == null);
    for (bs localbs = this.e; ; localbs = (bs)this.f.c())
      return localbs;
  }

  public final bu o()
  {
    if (this.f != null);
    for (Object localObject = (bu)this.f.f(); ; localObject = this.e)
      return localObject;
  }

  public final bp p()
  {
    bp localbp = q();
    if (!localbp.a())
      throw b(localbp);
    return localbp;
  }

  public final bp q()
  {
    bp localbp = new bp(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    bp.a(localbp, this.b);
    if (this.d == null)
    {
      if ((0x2 & this.a) == 2)
      {
        this.c = Collections.unmodifiableList(this.c);
        this.a = (0xFFFFFFFD & this.a);
      }
      bp.a(localbp, this.c);
      if ((i & 0x4) == 4)
        k |= 2;
      if (this.f != null)
        break label143;
      bp.a(localbp, this.e);
    }
    while (true)
    {
      bp.a(localbp, k);
      ab_();
      return localbp;
      bp.a(localbp, this.d.f());
      break;
      label143: bp.a(localbp, (bs)this.f.d());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bq
 * JD-Core Version:    0.6.2
 */